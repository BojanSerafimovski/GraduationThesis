using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data.SqlClient;


namespace GraduationThesis
{
    public partial class ShopPage : System.Web.UI.Page

    // establishing connection to the database
    {
        SqlConnection con = new SqlConnection(@"Data Source=BOJAN-PC;Initial Catalog=Subscribers;Persist Security Info=True;User ID=sa;Password=password");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // collecting the product's name and redirecting it into the other web form

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label1.Text);
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label2.Text);
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label3.Text);
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label4.Text);
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label5.Text);
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label6.Text);
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label7.Text);
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label8.Text);
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label9.Text);
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label10.Text);
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label11.Text);
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label12.Text);
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShopNowPage.aspx?productname=" + Label13.Text);
        }

        // inserting the e-mail entered by the user in the database
        protected void subscribe_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Subscribes VALUES ('" + email_textbox.Text + "')";
            cmd.ExecuteNonQuery();

            try
            {
                confirm.Text = "Thank you for your subscription!";

                email_textbox.Text = "";
            }

            catch (Exception)
            {
                confirm.Text = "You can't subscribe at the moment, please try again later.";
                confirm.ForeColor = Color.Red;
            }
        }

    }
}