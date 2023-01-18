/// <summary>
/// Codeunit "CreateCustomReportSelections" (ID 50103).
/// </summary>

codeunit 50103 CreateCustomReportSelections
{
    //#TableNo = "Customer";
    trigger OnRun()
    var
        customer: record Customer;
        customerReportSelection: Record "Custom Report Selection";
    begin
        customer.reset;
        if customer.findset then
            if customer.FindSet() then
                repeat
                    customerReportSelection.Init();
                    customerReportSelection.validate("Source type", 18); //# Customer
                    customerReportSelection.validate("Source No.", Customer."No.");
                    customerReportSelection.validate(usage, customerReportSelection.usage::"S.Invoice");
                    customerReportSelection.validate(Sequence, 1);
                    customerReportSelection.validate("Report ID", report::"Standard Sales - Invoice"); //# 1306
                    customerReportSelection.validate("Use for Email Attachment", true);
                    customerReportSelection."Send To Email" := customer."E-Mail"; //# Cannot validate due to illegal email-adresses
                    if not customerReportSelection.insert(true) then;

                    customerReportSelection.validate(usage, customerReportSelection.usage::"S.Cr.Memo");
                    customerReportSelection.validate(Sequence, 2);
                    customerReportSelection.validate("Report ID", report::"Standard Sales - Credit Memo"); //# 1307
                    if not customerReportSelection.insert(true) then;

                    customerReportSelection.validate(usage, customerReportSelection.usage::Reminder);
                    customerReportSelection.validate(Sequence, 3);
                    customerReportSelection.validate("Report ID", report::"Reminder"); //# 117
                    customerReportSelection."Use for Email Body" := true; //# NOT validate
                    customerReportSelection.validate("Email Body Layout Code", 'MS-117-EMAIL_DEF');
                    if not customerReportSelection.insert(true) then;

                    customerReportSelection.validate(usage, customerReportSelection.usage::"C.Statement");
                    customerReportSelection.validate(Sequence, 4);
                    customerReportSelection.validate("Report ID", report::"Standard Statement"); //# 1316
                    customerReportSelection.validate("Email Body Layout Code", 'MS-1316-EMAIL_DEF');
                    if not customerReportSelection.insert(true) then;
                until customer.Next() = 0;
        Message('Done');
    end;

}