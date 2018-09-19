using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category_Management_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void updategrid()
    {

        GridViewCategory.DataBind();
    }
    protected void Category_Submit_Click(object sender, EventArgs e)
    {
        if (Category_Input.Text == "")
        {
            label_category.Text = "Enter the Category Name";
        }
        else
        {
            try
            {
                
                SqlConnection conn1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OPG.mdf;Integrated Security=True");

                //var conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\template_castle.mdf;Integrated Security=True");
                var ds = new DataSet();
                var adpt = new SqlDataAdapter("Select * from category ", conn1);
                //adpt.Fill(ds, "product_categories");
                adpt.Fill(ds, "category");
                DataRow dr = ds.Tables["category"].NewRow();

                dr["Name"] = Category_Input.Text;

                ds.Tables["category"].Rows.Add(dr);

                SqlCommandBuilder build = new SqlCommandBuilder(adpt);
                adpt.Update(ds, "category");
                updategrid();
                label_category.Text = "Category Added Successfully";
                Category_Input.Text = "";

                //lblCategoryMessage = "Category Added Successfully";
            }
            catch (Exception ex)
            {
                label_category.Text = ex.Message;
            }

        }
    }
}