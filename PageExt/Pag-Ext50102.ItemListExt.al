pageextension 50102 ItemListExt extends "Item List"
{
    layout
    {
        addafter(Description)
        {
            field("På Webshop"; Rec."På Webshop")
            {
                ApplicationArea = all;
            }
        }
    }
}
