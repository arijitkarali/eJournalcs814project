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
    public partial class submitarticle : System.Web.UI.Page
    {
        String userid;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {
                userid = Session["userid"].ToString();
            }
            else
            {
                Response.Redirect("errorpage.aspx?error=accessdenied");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string subID = TextBox6.Text + userid;
            string filename1 = subID + ".pdf";
            string filename2 = subID + ".jpeg";
            string userFolderPath = Server.MapPath("~/files");
            string filepath1 = userFolderPath + "/" + DropDownList1.SelectedItem.Value + "/submitted/" + filename1;
            string filepath2 = userFolderPath + "/" + DropDownList1.SelectedItem.Value + "/submitted/" + filename2;
            if (FileUpload1.HasFile&& FileUpload2.HasFile)
            {
                FileUpload1.SaveAs(userFolderPath + "/" + DropDownList1.SelectedItem.Value + "/submitted/" + filename1);
                FileUpload2.SaveAs(userFolderPath + "/" + DropDownList1.SelectedItem.Value + "/submitted/" + filename2);
                
            }
            else
            {
                Response.Write("<script>alert('no file selected');</script>");
            }

            try
            {
                SqlConnection conn = new SqlConnection(strcon);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd1 = new SqlCommand("INSERT INTO articletbl(subID,status,title,authors,date,kewords,Affiliation,category,pdflink,imglink)VALUES(@subID,@status,@title,@authors,@date,@keywords,@Affiliation,@category,@pdflink,@imglink)", conn);
                SqlCommand cm2 = new SqlCommand("INSERT INTO authortbl(subID,userid) VALUES (@subID,@userid)",conn);
                cmd1.Parameters.AddWithValue("@subID", subID);
                cmd1.Parameters.AddWithValue("@status", "submitted");
                cmd1.Parameters.AddWithValue("@title", TextBox1.Text.Trim());
                cmd1.Parameters.AddWithValue("@authors", TextBox2.Text.Trim());
                cmd1.Parameters.AddWithValue("@date", TextBox3.Text.Trim());
                cmd1.Parameters.AddWithValue("@keywords", TextBox4.Text.Trim());
                cmd1.Parameters.AddWithValue("@Affiliation", TextBox5.Text.Trim());
                cmd1.Parameters.AddWithValue("@category", DropDownList1.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@pdflink", filepath1);
                cmd1.Parameters.AddWithValue("@imglink", filepath2);
                cm2.Parameters.AddWithValue("@subID", subID);
                cm2.Parameters.AddWithValue("@userid", userid);

                cmd1.ExecuteNonQuery();
                cm2.ExecuteNonQuery();

                conn.Close();
                Response.Redirect("userprofile.aspx?status=submitted");
                //if (result < 0) { Response.Write("<script>alert('database error');</script>"); }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }

        }
    }
}