/// <summary>
/// TableExtension SalesHeaderExt (ID 50103) extends Record Sales Header.
/// </summary>
/// 
tableextension 50103 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(50100; "Ordretype"; enum "Enum Ordretype")
        {
            Caption = 'Ordretype';
            DataClassification = ToBeClassified;
        }
    }
}
