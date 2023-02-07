/// <summary>
/// PageExtension NAVSPC_SalesQuoteSubformExt (ID 50107) extends Record Sales Quote Subform.
/// </summary>
pageextension 50107 "NAVSPC_SalesQuoteSubformExt" extends "Sales Quote Subform"
{
    actions
    {
        addafter("E&xplode BOM")
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