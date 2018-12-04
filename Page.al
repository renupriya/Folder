page 51113 Gitpage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Exchange Object";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Item ID";"Item ID")
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(sample)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Message('Success1');
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}