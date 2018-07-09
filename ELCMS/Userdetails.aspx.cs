using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELCMS
{
    public partial class Userdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                txt_Name.Text = Session["Username"].ToString();
            }
            
        }

        protected void UserDetails_Submit(object sender, EventArgs e)
        {

        }

        protected void UserDetails_Clear(object sender, EventArgs e)
        {

        }
    }
}