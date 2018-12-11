// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

page 51112 "CustCard"
{
    UsageCategory = Documents;
    ApplicationArea = ALL;
    SourceTable = Customer;
    SourceTableTemporary = true;
    PageType = Card;
    layout
    {
        area(Content)
        {
            group(general)
            {
                field("No."; "No.")
                {
                    //LookupPageId = "Customer List";
                    TableRelation = Customer.id;
                }
            }
        }
    }
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
        Message('Git initialized Successfully');
        gitpage.Run();
        Message('GITpage run possible');
    end;

    var
        gitpage:page GitCustpage;

}
