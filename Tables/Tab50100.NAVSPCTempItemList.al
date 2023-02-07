/// <summary>
/// Table NAVSPC_TempItemList (ID 50100).
/// </summary>
table 50100 "NAVSPC_Last_Item_Sales"
{
    Caption = 'Sidste Varesalg';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Posting Date"; Date)
        {
            Caption = 'Bogføringsdato';
            DataClassification = ToBeClassified;
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Bilagsnr.';
            DataClassification = ToBeClassified;
        }
        field(3; Quantity; Decimal)
        {
            Caption = 'Antal';
            DataClassification = ToBeClassified;
        }
        field(4; "Unit Price"; Decimal)
        {
            Caption = 'Apris';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Posting Date", "Document No.")
        {
            Clustered = true;
        }
    }
}
