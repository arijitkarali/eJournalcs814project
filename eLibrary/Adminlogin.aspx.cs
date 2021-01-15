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
    public partial class Adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from admintbl WHERE adminID='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "' AND roleID='"+TextBox3.Text.Trim()+"'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert(' " + dr.GetValue(1).ToString() + "');</script>");
                    }
                    Session["adminid"] = TextBox1.Text;
                    Session["roleid"] = TextBox3.Text;
                    Response.Redirect("adminprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert(' invalid username or password or role ');</script>");
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }
    }
}