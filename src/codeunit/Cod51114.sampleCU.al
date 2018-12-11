codeunit 51114 "sampleCU"
{
    trigger OnRun()
    begin
        
    end;
    [EventSubscriber(ObjectType::Page, Page::Gitpage, 'OnAfterActionEvent', 'CuDemo', false, false)]
    local procedure MyProcedure()
    begin
        Message('Action Validation Successful');
        message('req');
    end;
    var
        myInt: Integer;
}
