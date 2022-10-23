/// <summary>
/// PageExtension CustomerCardExt (ID 50101) extends Record Customer Card.
/// </summary>
/// 
pageextension 50101 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter("E-Mail")
        {
            field("Email Bogholderi"; Rec."Email Bogholderi")
            {
                ApplicationArea = all;
            }
        }
        addbefore("Ship-to Code")
        {
            field(Kreditforsikringsstatus; Rec.Kreditforsikringsstatus)
            {
                ApplicationArea = all;
            }
        }
        addbefore("Prepayment %")
        {
            field(CopydanFritaget; Rec.CopydanFritaget)
            {
                ApplicationArea = all;
            }
            field("CopyDan-Nummer"; Rec."CopyDan-Nummer")
            {
                ApplicationArea = all;
            }
        }
    }
}
