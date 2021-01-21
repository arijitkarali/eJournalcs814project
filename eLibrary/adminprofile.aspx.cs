using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
        string rolecat;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
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
                rolecat = "s1";
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


            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                //SqlCommand cmd = new SqlCommand("SELECT * from member_tbl WHERE userid='" + userid + "'", conn);
                SqlCommand cmd2 = new SqlCommand("SELECT ar.subID,ar.title,ar.authors,ar.date,ar.kewords,ar.Affiliation,sub.reviewer1remarks,sub.reviewer2remarks,sub.editorremarks FROM articletbl AS ar INNER JOIN submissiontbl AS sub ON(ar.subID=sub.subID) WHERE ar.category='"+rolecat+"' AND ar.status='submitted';", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                da.Fill(dt);
                
                gridview1.DataSource = dt;
                gridview1.DataBind();


                conn.Close();





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }

        }

        
    }
}