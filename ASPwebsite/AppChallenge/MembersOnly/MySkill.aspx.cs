using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MembersOnly_MySkill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
            SkillTextbox.Text = Profile.Skills;
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Profile.Skills = SkillTextbox.Text;
    }
}