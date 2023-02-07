/// <summary>
/// PageExtension NAVSPC_SalesOrderSubformExt (ID 50105) extends Record Sales Order Subform.
/// </summary>
/// 
pageextension 50105 "NAVSPC_SalesOrderSubformExt" extends "Sales Order Subform"
{
    layout
    {
        addafter("Shipment Date")
        {
            field("Leverandør varenr."; Item."Vendor Item No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("GTIN Nr."; item.GTIN)
            {
                ApplicationArea = all;
                Editable = false;
            }
        }
    }

    actions
    {
        addafter("Select Nonstoc&k Items")
        {
            Action("Hop til Varekort")
            {
                Image = Card;
                ApplicationArea = Basic, Suite;
                Caption = 'Hop til Varekort';
                ShortcutKey = 'Alt+K';
                Trigger OnAction()
                var
                    Item: Record Item;
                begin
                    IF ((Rec.Type = Rec.type::Item) AND (rec."No." <> '')) Then
                        IF Item.get(rec."No.") then
                            Page.Run(Page::"Item Card", Item);
                end;
            }
        }
        addafter("Hop til Varekort")
        {
            Action("Sidste Salg")
            {
                Image = Card;
                ApplicationArea = Basic, Suite;
                Caption = 'Sidste Salg';
                ShortcutKey = 'Alt+S';
                Trigger OnAction()
                var
                    LastItemSales: Record "NAVSPC_Last_Item_Sales" temporary;
                    salesInvoiceLine: Record "Sales Invoice Line";
                    ValueEntry: Record "Value Entry";
                    lineCounter: Integer;
                begin
                    LastItemSales.Reset();
                    LastItemSales.DeleteAll();
                    IF ((rec.type = rec.type::Item) AND (rec."No." <> '')) then begin
                        lineCounter := 0;
                        ValueEntry.Reset;
                        ValueEntry.SetCurrentKey("Source Type", "Source No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Item No.", "Variant Code", "Posting Date");
                        ValueEntry.Setrange("Source Type", ValueEntry."Source Type"::Customer);
                        ValueEntry.setrange("Source No.", rec."Bill-to Customer No.");
                        ValueEntry.Setrange("Item No.", Rec."No.");
                        ValueEntry.setrange("Document Type", ValueEntry."Document Type"::"Sales Invoice");
                        ValueEntry.SetAscending("Posting Date", False);
                        if ValueEntry.FindSet(false, false) then begin
                            repeat
                                lineCounter += 1;
                                LastItemSales.INIT;
                                LastItemSales."Posting Date" := ValueEntry."Posting Date";
                                LastItemSales."Document No." := ValueEntry."Document No.";
                                LastItemSales.Quantity := abs(ValueEntry."Invoiced Quantity");
                                LastItemSales."Unit Price" := (ValueEntry."Sales Amount (Actual)" / LastItemSales.Quantity);
                                IF NOT LastItemSales.insert(true) then;
                            until ((ValueEntry.Next = 0) OR (lineCounter = 5));
                            page.run(page::"Last 5 Item Sales", LastItemSales);
                        end;
                    end;

                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if ((rec.type = rec.type::Item) AND (rec."No." <> '')) then begin
            IF NOT item.Get(rec."No.") then
                clear(item);
        end;
    End;

    var
        Item: Record Item;
}