using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class Ideas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void SubmitIdeaButton_Click(object sender, EventArgs e)
    {
        TextBox mIdeaTextbox = IdeaTextbox;
        BulletedList mIdeaList = IdeaList;
        String ideaText = mIdeaTextbox.Text;
        String Username = HttpContext.Current.User.Identity.Name;
        String Date = System.DateTime.Now.Date.ToShortDateString();

        SqlConnection ideaListCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString());
        ideaListCon.Open();
        string insertComText = "INSERT INTO IdeaList  (ListEntry, Author, Date) values('" + ideaText + " (submitted by " + Username + " on "+Date+")', '" + Username + "' , '" + Date + "')";
        SqlCommand insertCom = new SqlCommand(insertComText, ideaListCon);
        insertCom.BeginExecuteNonQuery();
        mIdeaList.DataBind();
        ideaListCon.Close();
        

    }
}
