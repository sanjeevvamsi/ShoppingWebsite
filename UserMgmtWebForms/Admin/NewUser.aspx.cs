using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using UserMgmtDAL;
using UserMgmtDAL.EntityLayer;

namespace UserMgmtWebForms.Admin
{
    public partial class NewUser : System.Web.UI.Page
    {
        RoleRepository roleRepo;
        UserRepository userRepo;



        protected void Page_Load(object sender, EventArgs e)
        {
           roleRepo = new RoleRepository();
           userRepo = new UserRepository();

        }



        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Role> roles = roleRepo.GetAll().ToList();
                DropDownList1.DataSource = roles;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Name = TextBox1.Text;
            user.DOB = DateTime.Parse(TextBox2.Text);
            user.Gender = RadioButton1.Checked ? "M" : "F";
            user.Mobile = TextBox3.Text;
            user.Email = TextBox4.Text;
            user.Password = TextBox5.Text;
            user.RoleId = Convert.ToByte(DropDownList1.SelectedItem.Value);
            userRepo.Add(user);
            Server.Transfer("~/Admin/SearchDisplay.aspx");
        }







    }
 }
