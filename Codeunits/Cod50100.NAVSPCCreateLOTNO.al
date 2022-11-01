/// <summary>
/// Codeunit NAVSPC_Create_LOTNO (ID 50100).
/// </summary>
/// 
codeunit 50100 "NAVSPC_Create_LOTNO"
{
    TableNo = "Item Journal Line";

    trigger OnRun()
    var
        ItemJNLine: Record "Item Journal Line";
        Item: Record Item;
        TempReservEntry: Record "Reservation Entry" temporary;
        CreateReservEntry: Codeunit "Create Reserv. Entry";
        ReservStatus: Enum "Reservation Status";
        TempEntryNo: Integer;
    begin

        TempEntryNo := 0;
        ItemJNLine.RESET;
        ItemJNLine.Setrange("Journal Template Name", Rec."Journal Template Name");
        ItemJNLine.Setrange(ItemJNLine."Journal Batch Name", Rec."Journal Batch Name");
        ItemJNLine.FINDSET(false, false);
        repeat
            IF copystr(ItemJNLine.Description, 1, 1) = 'S' Then
                ItemJNLine.Description := CopyStr(ItemJNLine.Description, 2);
            TempEntryNo += 1;
            TempReservEntry.Init();
            TempReservEntry."Entry No." := TempEntryNo;
            TempReservEntry."Lot No." := ItemJNLine.Description;
            TempReservEntry.Validate(Quantity, ItemJNLine.Quantity);
            TempReservEntry.Validate("Quantity (Base)", ItemJNLine."Quantity (Base)");
            TempReservEntry."Expiration Date" := ItemJNLine."Posting Date";
            TempReservEntry.Insert();

            CreateReservEntry.SetDates(0D, TempReservEntry."Expiration Date");
            CreateReservEntry.CreateReservEntryFor(Database::"Item Journal Line", ItemJNLine."Entry Type", ItemJNLine."Journal Template Name", ItemJNLine."Journal Batch Name", 0, ItemJNLine."Line No.", ItemJNLine."Qty. per Unit of Measure",
            TempReservEntry.Quantity, TempReservEntry.Quantity * ItemJNLine."Qty. per Unit of Measure", TempReservEntry);
            CreateReservEntry.CreateEntry(ItemJNLine."Item No.", ItemJNLine."Variant Code", ItemJNLine."Location Code", '', 0D, 0D, 0, ReservStatus::Surplus);

            Item.GET(ItemJNLine."Item No.");
            ItemJNLine.Description := CopyStr(Item.Description, 1, 50);
            ItemJNLine.Modify(false);
        Until ItemJNLine.Next = 0;

        Message('Finished');

    end;

}
