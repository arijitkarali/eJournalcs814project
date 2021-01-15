using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibrary
{
    
    public partial class adminprofile : System.Web.UI.Page
    {
        string adminid;
        string roleid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminid"] != null)
            {
                adminid = Session["adminid"].ToString();
                Label1.Text = "Welcome " + adminid;
                Label1.Visible = true;
            }
            else
            {
                Response.Redirect("errorpage.aspx?error=accessdenied");
            }
            if(Session["roleid"].ToString()!=null)
            {
                roleid = Session["roleid"].ToString();
                Label2.Text = "your roleid is: "+roleid;
                Label2.Visible = true;
            }

            if (roleid == "editorS1")
            {
                
                Label3.Text = "your role is: editor under section 1";
                Label3.Visible = true;
            }
            else if(roleid == "reviewerS1")
            {
                
                Label3.Text = "your role is: reviewer under theoretical computer science";
                Label3.Visible = true;
            }
            else if (roleid == "editorS2")
            {
                
                Label3.Text = "your role is: editor under Information security";
                Label3.Visible = true;
            }
        }
    }
}