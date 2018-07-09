using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ELCMS
{
    public partial class UpdateRoutines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void Routine_Search(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from routine where Maintops_number =@Maintops_number", con);
            cmd.Parameters.AddWithValue("@Maintops_number", search_maintops_no.Text);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string routine_number = (string)e.NewValues["Routine_number"];
            string routine_description = (string)e.NewValues["Routine_Description"];
            string by_whom = (string)e.NewValues["by_whom"];
            string routine_priority = (string)e.NewValues["routine_priority"];


            // Update here the database record for the selected routine
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE routine SET Routine_Description = @Routine_Description,by_whom = @by_whom,routine_priority = @routine_priority Where Routine_number =" + routine_number + "" , con);

            cmd.Parameters.AddWithValue("@Routine_Description", routine_description);
            cmd.Parameters.AddWithValue("@by_whom", by_whom);
            cmd.Parameters.AddWithValue("@routine_priority", routine_priority);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int patientID = (int)e.Keys["patientID"];
            //string routine_number = e.Keys["Routine_number"].ToString();
            //int Eid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string routine_number = GridView1.DataKeys[e.RowIndex].Value.ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            SqlCommand cmd = new SqlCommand("delete from routine where Routine_number='"+ routine_number + "'" , con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            BindData();
        }

        private void BindData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from routine where Maintops_number =@Maintops_number", con);
            cmd.Parameters.AddWithValue("@Maintops_number", search_maintops_no.Text);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}