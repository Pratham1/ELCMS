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
    public partial class Maintops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Maintops_Submit(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ELCMSDBconnect"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Maintops values (@Maintops_number,@EquipmentCode,@EquipmentName,@Equipment_Description,@ORIG,@AMND,@Ships_Applicable,@Authority,@Documents,@Remarks)", con);
            cmd.Parameters.AddWithValue("Maintops_number", txt_maintops_no.Text);
            cmd.Parameters.AddWithValue("EquipmentCode", txt_equip_code.Text);
            cmd.Parameters.AddWithValue("EquipmentName", txt_Equip_name.Text);
            cmd.Parameters.AddWithValue("Equipment_Description", txt_equip_desc.Text);
            cmd.Parameters.AddWithValue("ORIG", txt_Orig.Text);
            cmd.Parameters.AddWithValue("AMND", txt_AMND.Text);
            cmd.Parameters.AddWithValue("Ships_Applicable", txt_ship_name.Text);
            cmd.Parameters.AddWithValue("Authority", txt_authority.Text);
            cmd.Parameters.AddWithValue("Documents", txt_docs.Text);
            cmd.Parameters.AddWithValue("Remarks", txt_remarks.Text);

            Session["Maintops_number"] = txt_maintops_no.Text;
            Session["Equipment_Code"] = txt_equip_code.Text;
            Session["EquipmentName"] = txt_Equip_name.Text;

            int status = cmd.ExecuteNonQuery();

            btn_add_routine.Disabled = false;
            
        }

    }
}