/// <summary>
/// TableExtension NAVSPC_ItemExt (ID 50101) extends Record Item.
/// </summary>
/// 
tableextension 50101 "NAVSPC_ItemExt" extends Item
{
    fields
    {
        field(50100; "Reol"; Code[30])
        {
            caption = 'Reol';
        }
        field(50101; "Sektion"; Code[30])
        {
            caption = 'Sektion';
        }
        field(50102; "Hylde"; Code[30])
        {
            caption = 'Hylde';
        }
        field(50103; "Producentnavn"; Text[60])
        {
            caption = 'Producentnavn';
        }
        field(50105; "WEEEpligt"; Boolean)
        {
            caption = 'WEEEpligt';
        }
        field(50106; "WEEEgruppe"; Enum "Enum WEEEgruppe")
        {
            caption = 'WEEEgruppe';
        }
        field(50110; "På Webshop"; Boolean)
        {
            caption = 'På Webshop';
        }
        field(50111; "Webshopkategori1"; Code[250])
        {
            caption = 'Webshopkategori1';
        }
        field(50112; "Webshopkategori2"; Code[250])
        {
            caption = 'Webshopkategori2';
        }
        field(50113; "Webshopkategori3"; Code[250])
        {
            caption = 'Webshopkategori3';
        }
        field(50114; "Webshopkategori4"; Code[250])
        {
            caption = 'Webshopkategori4';
        }
    }
    fieldgroups
    {
        addlast(DropDown; Inventory, "Qty. on Sales Order")
        { }
    }
}