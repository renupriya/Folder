codeunit 51114 "sampleCU"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::Gitpage, 'OnAfterActionEvent', 'SampleDemo', false, false)]
    local procedure MyProcedure()
    begin
        Message('Action Validation Successful');
    end;

    var
        myInt: Integer;
}