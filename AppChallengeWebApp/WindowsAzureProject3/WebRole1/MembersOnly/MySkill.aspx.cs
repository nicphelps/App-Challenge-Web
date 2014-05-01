using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.IO;


public partial class MembersOnly_MySkill : System.Web.UI.Page
{
    string redirectUri = "http://osuappchallenge.cloudapp.net/MembersOnly/Return.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {
        SuccessLabel.Text = "";
        if (!Page.IsPostBack)
        {
            SqlConnection skillsCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
            SqlCommand skillCmd = new SqlCommand("SELECT Skills, Pref, Contact FROM People WHERE [User] = @user", skillsCon);
            skillCmd.Parameters.AddWithValue("user", User.Identity.Name);
            skillsCon.Open();
            SqlDataReader skillRdr = skillCmd.ExecuteReader();

            while (skillRdr.Read())
            {
                SkillTextbox.Text = skillRdr["Skills"].ToString();
                PrefTextbox.Text = skillRdr["Pref"].ToString();
                ContactTextbox.Text = skillRdr["Contact"].ToString();

            }
            skillsCon.Close();
       
        }
   
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        SqlConnection peopleCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        peopleCon.Open();
        string insertComText = "UPDATE People SET Skills = @skills, Pref = @pref, Contact = @contact WHERE ([User] = @user)";
        SqlCommand insertCom = new SqlCommand(insertComText, peopleCon);
        insertCom.Parameters.AddWithValue("skills", SkillTextbox.Text);
        insertCom.Parameters.AddWithValue("pref", PrefTextbox.Text);
        insertCom.Parameters.AddWithValue("contact", ContactTextbox.Text);
        insertCom.Parameters.AddWithValue("user", User.Identity.Name);
        try
        {
            IAsyncResult result = insertCom.BeginExecuteNonQuery();
            while (!result.IsCompleted)
            {
                System.Threading.Thread.Sleep(100);
            }
            insertCom.EndExecuteNonQuery(result);
            SuccessLabel.Text = "Success";
            SuccessLabel.ForeColor = System.Drawing.Color.Green;
        }
        catch{
            SuccessLabel.Text = "Failed";
            SuccessLabel.ForeColor = System.Drawing.Color.Red;
        }
        peopleCon.Close();
    }

    protected void LinButtonClick(object sender, EventArgs e)
    {

        Response.Redirect(@"https://www.linkedin.com/uas/oauth2/authorization?response_type=code&client_id=755mysmmw301gi&scope=r_fullprofile%20r_emailaddress&state=32tegret43erwre&redirect_uri=" + redirectUri);
    }
}