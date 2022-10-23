/// <summary>
/// Enum Enum Kreditforsikringsstatus (ID 50101).
/// </summary>
/// 
enum 50101 "Enum Kreditforsikringsstatus"
{
    Extensible = true;

    value(0; "Ikke forsikret")
    {
        Caption = 'Ikke forsikret';
    }
    value(1; Blindcover)
    {
        Caption = 'Blindcover';
    }
    value(2; Forsikret)
    {
        Caption = 'Forsikret';
    }
    value(3; "Afslået")
    {
        Caption = 'Afslået';
    }
}
