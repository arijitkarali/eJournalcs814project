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
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
                Label1.Text = "Welcome " + userid;
                Label1.Visible = true;
            }
            else
            {
                Response.Redirect("errorpage.aspx?error=accessdenied");
            }

            if(Request.QueryString["status"]=="submitted")
            {
                Label2.Text = " Your article submission was successful";
                Label2.Visible = true;
            }

            //query db for user full name
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                //SqlCommand cmd = new SqlCommand("SELECT * from member_tbl WHERE userid='" + userid + "'", conn);
                SqlCommand cmd2 = new SqlCommand("SELECT ar.subID,ar.status,ar.title,ar.authors,ar.date,ar.kewords,ar.Affiliation,ar.pdflink,ar.imglink FROM [articletbl] ar INNER JOIN [authortbl] au WHERE au.userid='"+userid+"';",conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                da.Fill(dt);
                /*SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label1.Text = "Welcome " + dr.GetValue(0).ToString() +" "+ dr.GetValue(1).ToString();
                    } 
                   
                }
                else
                {
                    Response.Write("<script>alert(' invalid username or password ');</script>");
                }*/
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