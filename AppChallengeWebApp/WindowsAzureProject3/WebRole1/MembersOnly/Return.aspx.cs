using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Collections.Specialized;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using System.Xml.Linq;
using System.Xml;
using System.Data.SqlClient;
using System.Configuration;


public partial class Return : System.Web.UI.Page
{
    string redirectUri = "http://osuappchallenge.cloudapp.net/MembersOnly/Return.aspx";

    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        NameValueCollection qscollection = HttpUtility.ParseQueryString(Request.Url.Query);

         HttpWebRequest request = WebRequest.Create("https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&code="+qscollection["code"]+"&redirect_uri=" + redirectUri + "&client_id=755mysmmw301gi&client_secret=h8RNJ2fmxyFtDXEI") as HttpWebRequest;  

                // Get response  
         HttpWebResponse response = request.GetResponse() as HttpWebResponse;
         
             // Get the response stream  
             StreamReader reader = new StreamReader(response.GetResponseStream());

             // Console application output  
             string temp = reader.ReadToEnd();
             
             
         
        var values = JsonConvert.DeserializeObject<access_code>(temp);
        HttpWebRequest profileInfoReq = WebRequest.Create("https://api.linkedin.com/v1/people/~:(skills)?oauth2_access_token=" + values.access_token) as HttpWebRequest;
        HttpWebResponse profResponse = profileInfoReq.GetResponse() as HttpWebResponse;

        // Get the response stream  
        StreamReader profReader = new StreamReader(profResponse.GetResponseStream());

        // Console application output  
        string skills = profReader.ReadToEnd();
        string userSkills = "";
        using (XmlReader xmlReader = XmlReader.Create(new StringReader(skills)))
            {
                
                while (xmlReader.ReadToFollowing("name") != false)
                {
                    
                    userSkills = userSkills + xmlReader.ReadElementContentAsString()+", ";
                }
            }
       
        
        SqlConnection peopleCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        peopleCon.Open();
        string insertComText = "UPDATE People SET Skills = @skills WHERE ([User] = @user)";
        SqlCommand insertCom = new SqlCommand(insertComText, peopleCon);
        insertCom.Parameters.AddWithValue("skills", userSkills);
        insertCom.Parameters.AddWithValue("user", User.Identity.Name);
        try
        {
            IAsyncResult result = insertCom.BeginExecuteNonQuery();
            while (!result.IsCompleted)
            {
                System.Threading.Thread.Sleep(100);
            }
            insertCom.EndExecuteNonQuery(result);
            Response.Redirect("~/MembersOnly/MySkill.aspx");
        }
        catch
        {
           
        }


        
    }

    public class access_code
    {
        [JsonProperty("access_token")]
        public string access_token  { get; set; }
        
    }

}