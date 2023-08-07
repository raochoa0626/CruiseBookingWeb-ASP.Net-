using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace CruiseBookingWeb
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblSuccess.InnerText = "";
            // creating object of XML DOCument class  
            XmlDocument XmlDocObj = new XmlDocument();
            //loading XML File in memory  
            XmlDocObj.Load(Server.MapPath("Staff.xml"));
            //Select root node which is already defined  
            XmlNode RootNode = XmlDocObj.SelectSingleNode("AllStaff");
            //Creating one child node with tag name book  
            XmlNode MemberNode = RootNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Staff", ""));

            MemberNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Username", "")).InnerText = tbUsername.Text;
            MemberNode.AppendChild(XmlDocObj.CreateNode(XmlNodeType.Element, "Password", "")).InnerText = Helper.EncryptionDecryption.Encrypt(tbPwd.Text, "hshf-hdT3-uywgdT");

            //after adding node, saving BookStore.xml back to the server  
            XmlDocObj.Save(Server.MapPath("Staff.xml"));

            success();
            //Calling grid view binding method.  

        }

        private void success()
        {
            lblSuccess.InnerText = "Staff has been added successfully!";
            tbUsername.Text = "";
        }

    }
}