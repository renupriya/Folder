page 51113 "Gitpage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Name";"Name")
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
                    custpage.Run();
                    Message('Success');
                end;
            }
            action(Report)
            {
                ApplicationArea = ALL;
                trigger OnAction()
                begin
                    custreport.Run();
                end;
            }
            action(CuDemo)
            {
                message('Success');
            }
        }
    }

    var
        custpage: Page "Customer List";
        custreport: Report "Customer - List";
}
