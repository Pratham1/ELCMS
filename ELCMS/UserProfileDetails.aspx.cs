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
    public partial class UserProfileDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String username = "";
            if (Session["Username"] != null)
            {
                userNameLabel.Text = Session["Username"].ToString();
                username = Session["Username"].ToString();
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select Username,P_no,Department,User_group,User_unit,user_email from user_profile where Username ='" + username + "'", con);
                using (SqlDataReader read = cmd.ExecuteReader())
                {
                    while (read.Read())
                    {
                        txt_department.Text = (read["Department"].ToString());
                        txt_pno.Text = (read["P_no"].ToString());
                        txt_unit.Text = (read["User_unit"].ToString());
                        txt_group.Text = (read["User_group"].ToString());
                        txt_email.Text = (read["user_email"].ToString());
                    }
                }

            }
            finally
            {
                con.Close();
            }
            txt_department.ReadOnly = true;
            txt_pno.ReadOnly = true;
            txt_unit.ReadOnly = true;
            txt_group.ReadOnly = true;
            txt_email.ReadOnly = true;
        }

        protected void Edit_Profile(object sender, EventArgs e)
        {
            txt_department.ReadOnly = false;
            txt_pno.ReadOnly = false;
            txt_unit.ReadOnly = false;
            txt_group.ReadOnly = false;
            txt_email.ReadOnly = false;
           // btn_edit.Visible = false;
            
        }
        protected void Delete_Profile(object sender, EventArgs e)
        {

        }

        protected void Save_Edit(object sender, EventArgs e)
        {
         //   String username = "";
         //   username = Session["Username"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            String department = txt_department.Text;
            Console.Write(department);
            try
            {
                con.Open();
               // SqlCommand cmd = new SqlCommand("UPDATE user_profile SET P_no = @P_no,Department = @Department, User_group=@User_group , User_unit = @User_unit , user_email = @user_email Where Username ='" + username + "'",con);
                SqlCommand cmd = new SqlCommand("UPDATE user_profile SET Department = @Department Where Username ='Thor'", con);
              //  cmd.Parameters.AddWithValue("@P_no", txt_pno.Text);
                cmd.Parameters.AddWithValue("@Department", txt_department.Text);
              //  cmd.Parameters.AddWithValue("@User_group", txt_group.Text); 
              //  cmd.Parameters.AddWithValue("@User_unit", txt_unit.Text);
              //  cmd.Parameters.AddWithValue("@user_email", txt_email.Text);

                int status = cmd.ExecuteNonQuery();

            }
            finally
            {
                con.Close();
            }
        }

    }
}