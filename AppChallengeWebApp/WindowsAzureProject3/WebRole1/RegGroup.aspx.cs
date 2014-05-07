using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace WebRole1
{
    public partial class RegGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                TeamLeadEmailTB.Text = Membership.GetUser(User.Identity.Name).Email;
                TeamLeadNameTB.Text = User.Identity.Name;
                
            }
            catch (Exception)
            {
            }
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string emailText =
                "Team Lead: " + TeamLeadNameTB.Text + " Email: " + TeamLeadEmailTB.Text + @"
                 Members: " + MemberNameTB2.Text + ", " + MemberNameTB3.Text + ", " + MemberNameTB4.Text + ", " + ExtraTB.Text + @"
                 Idea: " + IdeaTB.Text + @"
                 Questions:" + QuestionTB.Text;
                   
            MailMessage mail = new MailMessage();
            mail.To.Add("davidmeehan7@gmail.com,nicole.marie.phelps@gmail.com");
            mail.From = new MailAddress("oregonstate.appchallenge@gmail.com", "No Reply", System.Text.Encoding.UTF8);
            mail.Subject = "This mail is send from asp.net application";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = emailText;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("OregonState.AppChallenge", "MeehanPhelps");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                ErrorLabel.Text = "";
                client.Send(mail);
                Response.Redirect("Success.aspx");
               
            }
            catch (Exception ex)
            {
                ErrorLabel.Text = "Error! Please try again.";
                
            }
        }
    }
}