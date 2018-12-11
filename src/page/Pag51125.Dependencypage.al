page 51125 "Dependencypage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SampleTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Dependent; Dependent)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

}