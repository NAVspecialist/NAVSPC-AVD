
/// <summary>
/// PageExtension "SalesOrderExt" (ID 50103) extends Record Sales Order.
/// </summary>
/// 
pageextension 50103 SalesOrderExt extends "Sales Order"
{
    layout
    {
        addafter("Salesperson Code")
        {
            Field("Ordretype"; rec.Ordretype)
            {
                ApplicationArea = all;
            }
        }
    }
    //# <1>
    //# HER SKAL DER lige før bogføring laves en kontrol af externt bilagsnr.
    //# </1>
}
