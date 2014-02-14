using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LinkedIn.OAuth;
using Hammock;
using System.Web.Security;
public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public void LiButtonClick(object sender, EventArgs e)
    {
        var session = LinkedInSession.RetrieveFromUserSession();
        if (session == null)
        {
            var token = OAuthManager.Current.CreateToken(callback: "http://localhost:18275/AppChallenge/Return.aspx");
            //The user is being redirected
            OAuthManager.Current.BeginAuth(token, endResponse: true, displayAllowDenyScreen: false);
           
        }
        else // User already signede into LinkedIn so set the auth cookie.
        {
            var p = session.GetProfile();
            string userName = p.Firstname + " " + p.Lastname;
            FormsAuthentication.SetAuthCookie(userName, false);
            
            Response.Redirect("~");
        }
    }
}
