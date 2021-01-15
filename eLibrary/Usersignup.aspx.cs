using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace eLibrary
{
    public partial class Usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                Response.Write("<script>alert('This userID is not available');</script>");
            }
            else
            {
                SignUpNewMember();
            }
        }

        void SignUpNewMember()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO member_tbl(fname,lname,dob,pincode,userid,contactno,password,status,role)VALUES(@fname,@lname,@dob,@pincode,@userid,@contactno,@password,@status,@role)", conn);
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@lname", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@contactno", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "pending");
                cmd.Parameters.AddWithValue("@role", "reader");

                cmd.ExecuteNonQuery();
               
                conn.Close();
                //if (result < 0) { Response.Write("<script>alert('database error');</script>"); }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }

        }

        bool CheckMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM ejournal_local.dbo.member_tbl WHERE userid='"+TextBox5.Text+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
            return false;
        }

        
    }
}