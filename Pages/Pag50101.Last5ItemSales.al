/// <summary>
/// Page Last 5 Item Sales (ID 50101).
/// </summary>
page 50101 "Last 5 Item Sales"
{
    Caption = 'Sidste 5 Varesalg';
    PageType = Listpart;
    SourceTable = NAVSPC_Last_Item_Sales;
    SourceTableView = sorting("Posting Date", "Document No.") Order(descending);
    Editable = false;
    SourceTableTemporary = true;
    UsageCategory = None;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
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
