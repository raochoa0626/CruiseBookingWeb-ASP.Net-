using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace CruiseBookingWeb
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblError.InnerText = "";

            DataSet ds = new DataSet();
             
            ds.ReadXml(Server.MapPath("Member.xml"));
            DataTable tblMEMBER = ds.Tables["Member"];
            DataRow[] results = tblMEMBER.Select("Username = '"+ tbUsername.Text +"' AND Password='"+ Helper.EncryptionDecryption.Encrypt(tbPwd.Text, "hshf-hdT3-uywgdT")+"'");

            if(results.Count() == 1)
            {

                HttpCookie cookie = new HttpCookie("Session");
                cookie.Value = "T";
                cookie.Expires = DateTime.Now.AddMinutes(2);
                Response.SetCookie(cookie);
                Session["isLogin"] =  "Member";
                Response.Redirect("Member.aspx");
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