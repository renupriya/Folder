codeunit 51114 "sampleCU"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::GitCustpage, 'OnAfterActionEvent', 'CuDemo', false, false)]
    local procedure MyProcedure()
    begin
        Message('Action Validation Successful');
    end;


}