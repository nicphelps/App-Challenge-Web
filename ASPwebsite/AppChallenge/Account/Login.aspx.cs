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
        string consumerKey = "755mysmmw301gi"; // The application's consumer key
        string consumerSecret = "h8RNJ2fmxyFtDXEI"; // The application's consumer secret
        string accessToken = "75--6b7d9d90-c014-4e87-8f42-9151a04bb540"; // The access token granted after OAuth authorization
        string accessTokenSecret = "9d0ded6b-0b4c-40ed-92d6-b08e36ed2601"; // The access token secret granted after OAuth authorization
        
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
