/// <summary>
/// PageExtension NAVSPC_PurchaseOrderExt (ID 50120) extends Record Purchase Order.
/// </summary>
pageextension 50120 "NAVSPC_PurchaseOrderExt" extends "Purchase Order"
{
    actions
    {
        modify(Reopen)
        {
            ShortcutKey = 'Ctrl+F8';
        }
    }
}