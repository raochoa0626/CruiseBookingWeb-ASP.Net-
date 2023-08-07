using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruiseBookingWeb
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] == "Member")
            {
                btnMemberLogin.Visible = false; 
            }
            else if (Session["isLogin"] == "Staff")
            {
                btnStafLogin.Visible = false; 
            }
            else
            {
                btnMemberLogin.Visible = true;
                btnStafLogin.Visible = true; 

            }

        }
    }
}