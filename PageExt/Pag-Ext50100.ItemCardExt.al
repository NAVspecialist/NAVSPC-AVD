/// <summary>
/// PageExtension ItemCardExt (ID 50100) extends Record Item Card.
/// </summary>
/// 
pageextension 50100 ItemCardExt extends "Item Card"
{
    layout
    {
        addafter("Shelf No.")
        {
            field("Reol"; rec.Reol)
            {
                ApplicationArea = all;
            }
            field("Sektion"; rec.Sektion)
            {
                ApplicationArea = all;
            }
            field("Hylde"; rec.Hylde)
            {
                ApplicationArea = all;
            }
        }
        addafter("Vendor Item No.")
        {
            field("Producentnavn"; rec.Producentnavn)
            {
                ApplicationArea = all;
            }
        }
        addafter("Purchasing Code")
        {
            field(WEEEpligt; Rec.WEEEpligt)
            {
                ApplicationArea = all;
            }
            field(WEEEgruppe; Rec.WEEEgruppe)
            {
                ApplicationArea = all;
            }
        }
        addafter(Description)
        {
            field(Webshopkategori1; Rec.Webshopkategori1)
            {
                ApplicationArea = all;
            }
            field(Webshopkategori2; Rec.Webshopkategori2)
            {
                ApplicationArea = all;
            }
            field(Webshopkategori3; Rec.Webshopkategori3)
            {
                ApplicationArea = all;
            }
            field(Webshopkategori4; Rec.Webshopkategori4)
            {
                ApplicationArea = all;
            }
        }
    }
}