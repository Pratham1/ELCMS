﻿using System;
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
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login_Submit(object sender, EventArgs e)
        {
            SqlConnection con=null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();
            }catch(Exception exc)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('System Error. Please Login after sometime')</script>");
            }
            SqlCommand cmd = new SqlCommand("select * from Login where UserName =@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", txt_Username.Text);
            cmd.Parameters.AddWithValue("@password", txt_Password.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("~/AdminDashboard.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
   }
}