using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Collections;
using System.Web.Profile;

public partial class People : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var users = Membership.GetAllUsers();
        var model = new List<UserModel>();
        var iterator = users.GetEnumerator();
        while (iterator.MoveNext())
        {
            var user = (MembershipUser)iterator.Current;
            ProfileCommon profile = (ProfileCommon)ProfileBase.Create(user.UserName, true);
            model.Add(new UserModel { Name = profile.UserName, Skills = profile.Skills });
        }
        PeopleGrid.DataSource = model;
        PeopleGrid.DataBind();
    }

    protected void PeopleGrid_OnDataBound(object sender, EventArgs e)
    {
        
    }
}