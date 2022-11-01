

/// <summary>
/// PageExtension NAVSPC_PurchOrderSubformExt (ID 50106) extends Record Purchase Order Subform.
/// </summary>
/// 
pageextension 50106 "NAVSPC_PurchOrderSubformExt" extends "Purchase Order Subform"
{
    actions
    {
        addafter(OrderTracking)
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
