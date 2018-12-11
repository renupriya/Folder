pageextension 51121 SalesorderListExt extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst(Processing)
        {
            action(Report)
            {
                Image = Report;
                Promoted = true;

                trigger OnAction()
                begin
                    SH.Reset();
                    SH.SetRange("No.", Rec."No.");
                    tex := '<?xml version="1.0" standalone="yes"?>'
                        + '<ReportParameters name="Sales Order Document" id="51120">'
                        + '<DataItems>'
                        + '<DataItem name="Sales Header">' + SH.GETVIEW(FALSE) + '</DataItem>'
                        + '</DataItems>'
                        + '</ReportParameters>';
                    Report.Execute(51120, tex);
                end;

            }
            action(SendMail)
            {
                Image = MailAttachment;
                trigger OnAction()

                begin
                    SMTPMail.CreateMessage(UserRec."User Name", 'renupriya.k@cetastech.com', 'santhiyaragavi.l@cetastech.com', Format(SH."No."), Format(SH."Sell-to Customer Name"), true);
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

}