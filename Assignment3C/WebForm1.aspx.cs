using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment3C
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text;
            Session["LastName"] = txtLastName.Text;

            txtDisplay.Text += txtFirstName.Text + " " + txtLastName.Text + "\n";
            txtDisplay.Text += txtEmail.Text + "\n";
            txtDisplay.Text += lstCountry.SelectedValue + "\n";

            Response.Redirect("/WebForm2.aspx");
        }
    }
}