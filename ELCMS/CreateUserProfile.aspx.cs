using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ELCMS
{
    public partial class CreateUserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into user_profile values (@Username,@P_no,@Department,@User_group,@User_unit,@user_email)", con);
            cmd.Parameters.AddWithValue("Username", txt_Name.Text);
            cmd.Parameters.AddWithValue("P_no", txt_pno.Text);
            cmd.Parameters.AddWithValue("Department", txt_department.Text);
            cmd.Parameters.AddWithValue("User_group", txt_Group.Text);
            cmd.Parameters.AddWithValue("User_unit", txt_unit.Text);
            cmd.Parameters.AddWithValue("user_email", txt_email.Text);


            SqlCommand search = new SqlCommand("select Username from login where Username=@Username", con);
            int status = search.ExecuteNonQuery();
            if (status > 0)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Username already exists')", true);
            }
            else
            {
                cmd.ExecuteNonQuery();
            }

            Response.Redirect(Request.RawUrl);

        }

        
    }
}