/// <summary>
/// PageExtension NAVSPC_SalesInvoiceSubformExt (ID 50108) extends Record Sales Invoice Subform.
/// </summary>
pageextension 50108 "NAVSPC_SalesInvoiceSubformExt" extends "Sales Invoice Subform"
{
    actions
    {
        addlast("F&unctions")
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