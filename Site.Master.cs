using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruiseBookingWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["isLogin"] == "Member")
            {
                if (Request.Cookies["Session"] == null)
                {
                    Session.Remove("isLogin");
                    Response.Redirect("Default.aspx");
                }

                memberLogin.Visible = false;
                btnLogout.Visible = true;
                btnLogout.Text = "Member Logout";
            }
            else if (Session["isLogin"] == "Staff")
            {
                if (Request.Cookies["Session"] == null)
                {
                    Session.Remove("isLogin");
                    Response.Redirect("Default.aspx");
                }

                staffLogin.Visible = false;
                btnLogout.Visible = true;
                btnLogout.Text = "Staff Logout";
            }
            else
            {
                staffLogin.Visible = true;
                memberLogin.Visible = true;
                btnLogout.Visible = false;
                 
            }

        }

        public void btnSubmit_Click(object sender, EventArgs e)
        {
            staffLogin.Visible = true;
            memberLogin.Visible = true;
            btnLogout.Visible = false;
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }
    }
}