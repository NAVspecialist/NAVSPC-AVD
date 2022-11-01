/// <summary>
/// Codeunit DeleteTrackSpec (ID 50102).
/// </summary>
/// 
codeunit 50102 DeleteTrackSpec
{
    TableNo = "Item Journal Line";

    trigger OnRun()
    var
        TrackSpeck: Record "Tracking Specification";
        EntrySum: Record "Entry Summary";
        ReservEntry: Record "Reservation Entry";

    begin
        TrackSpeck.DeleteAll(false);
        EntrySum.DeleteALL(False);
        ReservEntry.RESET;
        ReservEntry.Setrange("Source Batch Name", 'STANDARD');
        ReservEntry.DeleteAll((false));
        Message('Done');
    end;

}
