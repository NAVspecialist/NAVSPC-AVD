/// <summary>
/// PageExtension ItemLookupExt (ID 50113) extends Record Item Lookup.
/// </summary>
pageextension 50113 "ItemLookupExt" extends "Item Lookup"
{
    layout
    {
        addafter("Vendor Item No.")
        {
            field(Inventory; Rec.Inventory)
            {
                ApplicationArea = all;
            }
            field("Reserved Qty. on Sales Orders"; Rec."Reserved Qty. on Sales Orders")
            {
                ApplicationArea = all;
            }
        }
    }
}