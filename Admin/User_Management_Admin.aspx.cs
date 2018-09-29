using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_User_Management_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void AdminShowDiv(object sender, EventArgs e)
    {
        card_admin.Visible = true;
        card_blockUser.Visible = false;
    }

    protected void BlockUserShowDiv(object sender, EventArgs e)
    {
        card_admin.Visible = false;
        card_blockUser.Visible = true;
    }

    protected void NewAdminCreate(object sender, EventArgs e)
    {
        // Make a connection with database ..
    }

    protected void BlockUserStatus(object sender, EventArgs e)
    {
        // make a connect with database ..
    }
}