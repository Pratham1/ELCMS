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
    public partial class AddRoutines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Addroutine_Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into routine values (@Maintops_number,@Equipment_Code,@Equipment_Name,@Routine_number,@Routine_Description,@by_whom,@routine_priority,@routine_category)", con);

                cmd.Parameters.AddWithValue("Maintops_number", routine_maintops_no.Text);
                cmd.Parameters.AddWithValue("Equipment_Code", routine_equipment_code.Text);
                cmd.Parameters.AddWithValue("Equipment_Name", routine_equipment_name.Text);
                cmd.Parameters.AddWithValue("Routine_number", txt_routine_no.Text);
                cmd.Parameters.AddWithValue("Routine_Description", txt_routine_desc.Text);
                cmd.Parameters.AddWithValue("by_whom", txt_routine_group.Text);
                cmd.Parameters.AddWithValue("routine_category", txt_category.Text);
                cmd.Parameters.AddWithValue("routine_priority", txt_priority.Text);

                try {
                        int status = cmd.ExecuteNonQuery();
                }
                catch(SqlException exc)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error occurred while Inserting Data. Please Review your Data')", true);
                }

            }
            finally
            {
                con.Close();
            }
        }

        protected void Addroutine_Reset(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}