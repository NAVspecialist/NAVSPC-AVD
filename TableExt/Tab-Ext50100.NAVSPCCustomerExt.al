/// <summary>
/// TableExtension NAVSPC_CustomerExt (ID 50100) extends Record Customer.
/// </summary>
/// 
tableextension 50100 "NAVSPC_CustomerExt" extends Customer
{
    fields
    {
        field(50100; "E-mail hovedkontakt"; Text[80])
        {
            Caption = 'Email hovedkontakt';
        }
        field(50101; "CopydanFritaget"; Boolean)
        {
            caption = 'CopydanFritaget';
        }
        Field(50102; "CopyDan-Nummer"; Text[30])
        {
            caption = 'CopyDan-Nummer';
        }
        field(50105; "Kreditforsikringsstatus"; Enum "Enum Kreditforsikringsstatus")
        {
            caption = 'Kreditforsikringsstatus';
        }
    }
}