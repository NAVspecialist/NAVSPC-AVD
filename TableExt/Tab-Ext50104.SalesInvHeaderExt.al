tableextension 50104 "SalesInvHeaderExt" extends "Sales Invoice Header"
{
    fields
    {
        field(50100; "Ordretype"; enum "Enum Ordretype")
        {
            Editable = false;
            Caption = 'Ordretype';
            DataClassification = ToBeClassified;
        }
    }
}
