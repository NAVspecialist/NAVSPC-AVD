/// <summary>

/// Unknown NAVSPC-AVD (ID 50120).    

/// </summary>  
permissionset 50120 "NAVSPC-AVD"
{
    Assignable = true;
    Permissions = tabledata NAVSPC_Last_Item_Sales = RIMD,
        table NAVSPC_Last_Item_Sales = X,
        codeunit CreateCustomReportSelections = X,
        codeunit DeleteTrackSpec = X,
        codeunit NAVSPC_Create_LOTNO = X,
        codeunit NAVSPC_Create_SNNO = X,
        page "Last 5 Item Sales" = X,
        page "WEBservice - Item Inventory" = X,
        report "Standard Sales - Invoice-AVD" = X;
}