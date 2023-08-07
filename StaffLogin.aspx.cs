using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CruiseBookingWeb
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblError.InnerText = "";

             
            if ( tbUsername.Text.ToUpper() == "TA" && tbPwd.Text == "Cse44598!")
            {
                HttpCookie cookie = new HttpCookie("Session");
                cookie.Value = "T"; 
                cookie.Expires = DateTime.Now.AddMinutes(2);
                Response.SetCookie(cookie);


                Session["isLogin"] = "Staff";
                Response.Redirect("Staff.aspx");
            }
            else
            {
                error();
            }



        }

        private void error()
        {
            lblError.InnerText = "Username and password are wrong!";
            tbUsername.Text = "";
        }
    }
}