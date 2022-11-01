
/// <summary>
/// PageExtension NAVSPC_SalesOrderSubformExt (ID 50105) extends Record Sales Order Subform.
/// </summary>
/// 
pageextension 50105 "NAVSPC_SalesOrderSubformExt" extends "Sales Order Subform"
{
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
    }
}
