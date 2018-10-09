using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Photographer_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userLogin"] != null)
        {
            LblDisplayPhotographerUsername.Text = Session["userLogin"].ToString();
            LblDisplayUsernameFromSession.Text  = Session["userLogin"].ToString();
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
}