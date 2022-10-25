/// <summary>
/// TableExtension "TrackingSpecificationExt" (ID 50102) extends Record Tracking Specification.
/// </summary>
tableextension 50102 TrackingSpecificationExt extends "Tracking Specification"
{
    fields
    {
        modify("Serial No.")
        {
            trigger OnAfterValidate()
            begin
                IF rec."Quantity (Base)" = 0 then begin
                    Rec.Validate("Quantity (Base)", 1);
                end;
            end;
        }
    }
}
