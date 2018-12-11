page 51116 "SalesOrder1"
{
    PageType = Document;
    SourceTable = "Sales Header";
    UsageCategory = Documents;
    ApplicationArea = ALL;
    SourceTableTemporary = true;
    layout
    {
        area(content)
        {

            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = ALL;

                }
                field("Customer No."; "Sell-to Customer No.")
                {
                    ApplicationArea = All;

                }
                field("Sell-to Customer Name"; "Sell-to Customer Name")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }

                group(Qutoeno)
                {
                    field("Quote No."; "Quote No.")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                }
                group(Sellto)
                {
                    field("Sell-to Address"; "Sell-to Address")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Sell-to Address 2"; "Sell-to Address 2")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Sell-to Post Code"; "Sell-to Post Code")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Sell-to City"; "Sell-to City")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Sell-to Contact No."; "Sell-to Contact No.")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Sell-to Contact"; "Sell-to Contact")
                    { ApplicationArea = All; }
                    field("No. of Archived Versions"; "No. of Archived Versions")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Document Date"; "Document Date")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Order Date"; "Order Date")
                    { ApplicationArea = All; }
                    field("Due Date"; "Due Date")
                    { ApplicationArea = All; }
                    field("Requested Delivery Date"; "Requested Delivery Date")
                    { ApplicationArea = All; }
                    field("Promised Delivery Date"; "Promised Delivery Date")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("External Document No."; "External Document No.")
                    { ApplicationArea = All; }
                    field("Salesperson Code"; "Salesperson Code")
                    {
                        ApplicationArea = All;
                    }
                    field("Campaign No."; "Campaign No.")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Opportunity No."; "Opportunity No.")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Responsibility Center"; "Responsibility Center")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Assigned User ID"; "Assigned User ID")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Job Queue Status"; "Job Queue Status")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field(Status; Status)
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }

                }


            }
            part("Sales Order Subform"; "Sales Order Subform")
            {

                SubPageLink = "Document No." = field ("No.");
                ApplicationArea = ALL;

                UpdatePropagation = Both;


            }
            group(InvoiceDetails)
            {
                field("Currency Code"; "Currency Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Prices Including VAT"; "Prices Including VAT")
                { ApplicationArea = All; }
                field("VAT Bus. Posting Group"; "VAT Bus. Posting Group")
                { ApplicationArea = All; }
                field("Payment Terms Code"; "Payment Terms Code")
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("Payment Method Code "; "Payment Method Code")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("EU 3-Party Trade"; "EU 3-Party Trade")
                { ApplicationArea = All; }
                group(name)
                {
                    field(GetSelectedPaymentServicesText; GetSelectedPaymentServicesText)
                    {
                        ApplicationArea = All;
                    }
                    field("Transaction Type"; "Transaction Type")
                    { ApplicationArea = All; }
                    field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                    { ApplicationArea = All; }
                    field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                    { ApplicationArea = All; }
                    field("Payment Discount %"; "Payment Discount %")
                    { ApplicationArea = All; }
                    field("Pmt. Discount Date"; "Pmt. Discount Date")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Direct Debit Mandate ID"; "Direct Debit Mandate ID")
                    { ApplicationArea = All; }
                }

            }
            group("Shipping Billing")
            {
                group("shiptoCust")
                {
                    field("Ship-to Code"; "Ship-to Code")
                    { ApplicationArea = All; }
                    field("Ship-to Name"; "Ship-to Name")
                    {
                        Importance = Promoted;
                        ApplicationArea = All;
                    }
                    field("Ship-to Address"; "Ship-to Address")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Ship-to Address 2"; "Ship-to Address 2")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Ship-to Post Code"; "Ship-to Post Code")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Ship-to City"; "Ship-to City")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Ship-to Country/Region Code"; "Ship-to Country/Region Code")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Ship-to Contact"; "Ship-to Contact")
                    { ApplicationArea = All; }
                }
                group("Shipment Method")
                {
                    field("Shipment Method Code"; "Shipment Method Code")
                    {
                        Importance = Additional;
                        ApplicationArea = All;
                    }
                    field("Shipping Agent Code"; "Shipping Agent Code")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Shipping Agent Service Code"; "Shipping Agent Service Code")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Package Tracking No."; "Package Tracking No.")
                    { Importance = Additional; ApplicationArea = All; }
                }
                group("Shipto")
                {
                    field("Bill-to Name"; "Bill-to Name")
                    { ApplicationArea = All; }
                    field("Bill-to Address"; "Bill-to Address")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Bill-to Address 2"; "Bill-to Address 2")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Bill-to Post Code"; "Bill-to Post Code")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Bill-to City"; "Bill-to City")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Bill-to Contact No."; "Bill-to Contact No.")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Bill-to Contact"; "Bill-to Contact")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Location Code"; "Location Code")
                    { ApplicationArea = All; }
                    field("Shipment Date"; "Shipment Date")
                    { Importance = Promoted; ApplicationArea = All; }
                    field("Shipping Advice"; "Shipping Advice")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Outbound Whse. Handling Time"; "Outbound Whse. Handling Time")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Shipping Time"; "Shipping Time")
                    { Importance = Additional; ApplicationArea = All; }
                    field("Late Order Shipping"; "Late Order Shipping")
                    { Importance = Additional; ApplicationArea = All; }
                }
            }
            group("Foreign Trade")
            {
                field("Transaction Specification"; "Transaction Specification")
                { ApplicationArea = All; }
                field("Transport Method"; "Transport Method")
                { ApplicationArea = All; }
                field("Exit Point"; "Exit Point")
                { ApplicationArea = All; }
                field("Area"; "Area")
                { ApplicationArea = All; }
            }
            group(prepayment)
            {
                field("Prepayment %"; "Prepayment %")
                { Importance = Promoted; ApplicationArea = All; }
                field("Compress Prepayment"; "Compress Prepayment")
                { ApplicationArea = All; }
                field("Prepmt. Payment Terms Code"; "Prepmt. Payment Terms Code")
                { ApplicationArea = All; }
                field("Prepayment Due Date"; "Prepayment Due Date")
                { Importance = Promoted; ApplicationArea = All; }
                field("Prepmt. Payment Discount %"; "Prepmt. Payment Discount %")
                { ApplicationArea = All; }
                field("Prepmt. Pmt. Discount Date"; "Prepmt. Pmt. Discount Date")
                { ApplicationArea = All; }
            }

        }
        area(FactBoxes)
        {
            part("Pending Approval FactBox"; "Pending Approval FactBox")
            {
                SubPageLink = "Document Type" = field ("Document Type"), "Document No." = field ("No."), "Table ID" = const (36);
                ApplicationArea = ALL;
            }
            part("Sales Hist. Sell-to FactBox"; "Sales Hist. Sell-to FactBox")
            {
                SubPageLink = "No." = field ("Sell-to Customer No.");
                ApplicationArea = ALL;
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                SubPageLink = "No." = field ("Sell-to Customer No.");
                ApplicationArea = ALL;
            }
            part("Sales Line FactBox"; "Sales Line FactBox")
            {
                SubPageLink = "Document Type" = field ("Document Type"), "Document No." = field ("External Document No.");
                ApplicationArea = ADVANCED;
            }
            part("Item Invoicing FactBox"; "Item Invoicing FactBox")
            {
                SubPageLink = "No." = field ("No.");
                ApplicationArea = ADVANCED;
            }
            part("Approval FactBox"; "Approval FactBox")
            {
                ApplicationArea = ADVANCED;
            }
            part("Workflow Status FactBox"; "Workflow Status FactBox")
            {
                ApplicationArea = ALL;
            }
            systempart("RecordLinks"; Notes)
            { }
        }


    }




    actions
    {
        area(processing)
        {
            action(SendMail)
            {
                Image = MailAttachment;
                trigger OnAction()

                begin

                    SMTPMail.CreateMessage(UserRec."User Name", 'renupriya.k@cetastech.com', 'santhiyaragavi.l@cetastech.com', Format(SlineRec.Quantity), Format(SlineRec.Amount), true);
                    SMTPMail.Send();
                    Message('mail send successfully');

                end;
            }



        }

    }

    var

        tex: Text;
        SH: Record "Sales Header";
        SMTPMail: Codeunit "SMTP Mail";
        UserRec: Record User;
        SlineRec: Record "Sales Line";
        DynamicEditable: Boolean;


}
