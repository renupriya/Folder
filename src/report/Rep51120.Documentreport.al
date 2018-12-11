report 51120 "Documentreport"
{   RDLCLayout = 'docreport.rdl';
    dataset
    {
        dataitem("Sales Header";"Sales Header")
        {
            column(Bill_to_Customer_No_;"Bill-to Customer No.")
            {}
            column(HeaderNo_;"No.")
            {}
            column(Bill_to_Address;"Bill-to Address")
            {}
            column(Bill_to_City;"Bill-to City")
            {}
            column(Bill_to_Contact_No_;"Bill-to Contact No.")
            {}
            column(Sell_to_Customer_Name;"Sell-to Customer Name")
            {}
            column(Sell_to_Address;"Sell-to Address")
            {}
            column(Sell_to_City;"Sell-to City")
            {}
            column(Sell_to_Contact_No_;"Sell-to Contact No.")
            {}
            dataitem("Sales Line";"Sales Line")
            {   
                DataItemLink = "Document No."=FIELD("No.");
                column(No_;"No.")
                {}
                column(Description;Description)
                {}
                column(Quantity;Quantity)
                {}
                column(Amount;Amount)
                {}
                column(Unit_Price;"Unit Price")
                {}
                column(Document_No_;"Document No.")
                {}
                column(Document_Type;"Document Type")
                {}
                column(Location_Code;"Location Code")
                {}
                column(VAT__;"VAT %")
                {}
                dataitem("Company Information";"Company Information")
                {
                     
                    column(Fax_No_;"Fax No.")
                    {}
                    column(CompanyName;Name)
                    {}
                    column(CompanyAddress;Address)
                    {}
                    column(companyCity;City)
                    {}
                    column(companyPhone_No_;"Phone No.")
                    {}
                    column(companyPicture;Picture)
                    {}
                    column(VAT_Registration_No_;"VAT Registration No.")
                    {}
                    column(companyBank_Account_No_;"Bank Account No.")
                    {}
                    dataitem("Bank Account";"Bank Account")
                    {
                        DataItemLink = "Bank Account No."=FIELD("Bank Account No.");
                        column(BankName;Name)
                        {}
                        column(BankAddress;Address)
                        {}
                        column(BankCity;City)
                        {}
                        column(Bank_Account_No_;"Bank Account No.")
                        {}
                        column(Bank_Acc__Posting_Group;"Bank Acc. Posting Group")
                        {}
                        column(Currency_Code;"Currency Code")
                        {}
                        column(Country_Region_Code;"Country/Region Code")
                        {}
                        column(Post_Code;"Post Code")
                        {}
                        column(E_Mail;"E-Mail")
                        {}
                        column(Phone_No_;"Phone No.")
                        {}
                        column(BankPicture;Picture)
                        {}
                    } 
            
                }
            }
            
            
            
            trigger onaftergetrecord()
            var
                myInt: Integer;
            begin
                //AmountCustomer := Round("Sales Header".Amount,0.01);
                //RepCheck.InitTextVariable;

                //RepCheck.FormatNoText(NoText,AmountCustomer,"Sales Header"."Currency Code");

                //AmountInWords:=NoText[1];   
            end;
        }
            
            
        
       
    }
       
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
        
    }
       
    
    var
        myInt: Integer;
       // RepCheck : Report Check;
        NoText: Text[2];
        //AmountInWords:Text;
        //AmountCustomer :Decimal;
  
}
