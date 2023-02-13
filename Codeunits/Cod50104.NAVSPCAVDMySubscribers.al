/// <summary>
/// Codeunit NAVSPC_AVD_MySubscribers (ID 50104).
/// </summary>
codeunit 50104 "NAVSPC_AVD_MySubscribers"
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeRunSalesPost', '', false, false)]
    local procedure OnBeforeRunSalesPost(var SalesHeader: Record "Sales Header"; var IsHandled: Boolean; var SuppressCommit: Boolean);
    var
        Customer: Record Customer;
    begin
        IF STRLEN(SalesHeader."External Document No.") = 0 then begin
            Customer.get(SalesHeader."Bill-to Customer No.");
            IF Customer."Ext. Doc. No. Mandatory" then
                SalesHeader.TestField("External Document No.");
        end;
    end;
}