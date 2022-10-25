
/// <summary>
/// PageExtension SalesInvoiceExt (ID 50104) extends Record Posted Sales Invoice.
/// </summary>
pageextension 50104 SalesInvoiceExt extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Order No.")
        {
            Field("Ordretype"; rec.Ordretype)
            {
                ApplicationArea = all;
            }
        }
    }
}
