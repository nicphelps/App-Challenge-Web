using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebRole1.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            SqlConnection PeopleCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
            PeopleCon.Open();
            string insertComText = "INSERT INTO People ([User], Email, Skills) values( @User,@Email, '')";
            SqlCommand insertCom = new SqlCommand(insertComText, PeopleCon);
            insertCom.Parameters.AddWithValue("User", RegisterUser.UserName);
            insertCom.Parameters.AddWithValue("Email", RegisterUser.Email);
            IAsyncResult result = insertCom.BeginExecuteNonQuery();
            while (!result.IsCompleted)
            {
                System.Threading.Thread.Sleep(100);
            }
            insertCom.EndExecuteNonQuery(result);
            PeopleCon.Close();

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }

    }
}
