/// <summary>
/// PageExtension "NAVSPC_StandardTextCodesExt" (ID 50112) extends Standard Text Codes.
/// </summary>
/// 
pageextension 50112 NAVSPC_StandardTextCodesExt extends "Standard Text Codes"
{
    actions
    {
        addafter("E&xtended Texts")
        {
            Action("Run Codeunit")
            {
                Image = Document;
                ApplicationArea = Basic, Suite;
                Caption = 'Run a Codeunit';

                Trigger OnAction()
                var
                    RunCodeUnit: Codeunit CreateCustomReportSelections;
                begin
                    RunCodeUnit.Run();
                end;
            }
        }
    }
}
