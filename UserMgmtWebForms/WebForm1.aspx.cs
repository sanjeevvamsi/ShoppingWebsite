using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserMgmtWebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Text += "Load of Page called<br>";
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            lblMsg.Text += "Init of Page called<br>";
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            lblMsg.Text += "PreRender of Page called<br>";
        }
        protected void txtName_Load(object sender, EventArgs e)
        {
            lblMsg.Text += "Load of textbox called<br>";
        }

        protected void txtName_Init(object sender, EventArgs e)
        {
            lblMsg.Text += "Init of textbox called<br>";
        }

        protected void txtName_PreRender(object sender, EventArgs e)
        {
            lblMsg.Text += "PreRender of textbox called<br>";
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
           
            lblMsg.Text += "<font color='blue' size='5'>Welcome to asp.net prog..." + txtName.Text + "</font><br>";
        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                for (int i = 0; i < 10; i++)
                {
                    ListItem li = new
                        ListItem("Item" + (i + 10),
                        (i + 10).ToString());
                    DropDownList1.Items
                        .Add(li);
                }
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            lblMsg.Text += "Textbox change called<br>";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMsg.Text += "The item selected is " + DropDownList1.SelectedItem.Text + "<br>";
        }
    }
}