using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ELCMS.Models;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ELCMS.Account
{
    public partial class Register : Page
    {
        protected void Register_Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Login values (@UserName, @Password,@userRole)", con);
            cmd.Parameters.AddWithValue("UserName", reg_Username.Text);
            cmd.Parameters.AddWithValue("Password", reg_Password.Text);
            cmd.Parameters.AddWithValue("userRole", "User");
            int status = cmd.ExecuteNonQuery();
            if (status == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Registration Failed')</script>");
            }
            else
            {
                Response.Redirect("~/AdminDashboard.aspx");
            }
            
        }
    }
}