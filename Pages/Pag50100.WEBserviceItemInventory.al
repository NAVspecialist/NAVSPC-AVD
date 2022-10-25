/// <summary>
/// Page WEBservice - Item Inventory ItemCardExt (ID 50102) 
/// </summary>
/// 

page 50102 "WEBservice - Item Inventory"
{
    ApplicationArea = All;
    Caption = 'WEBservice - Item Inventory';
    PageType = List;
    Editable = false;
    SourceTable = Item;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(GTIN; Rec.GTIN)
                {
                    ApplicationArea = All;
                }
                field("Vendor Item No."; Rec."Vendor Item No.")
                {
                    ApplicationArea = All;
                }
                field("Producentnavn"; rec.Producentnavn)
                {
                    ApplicationArea = All;
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
