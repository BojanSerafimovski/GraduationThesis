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
using Dapper;
using System.Globalization;

namespace GraduationThesis
{
    public partial class ShopNowPage : System.Web.UI.Page
    {
        //accepting the product name as string depending on which product the button "SHOP NOW" is clicked
        protected void Page_Load(object sender, EventArgs e)
        {
            string productName = Request.QueryString["productname"];
            txt_product13.Text = productName;

            var dictionary = new Dictionary<string, object>
            {
        { "@ProductName", productName }
              };

            // filling the price from the database depending on which product the button "SHOP NOW" is clicked
            var parameters = new DynamicParameters(dictionary);
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (var connection = new SqlConnection(CS))
            {
                connection.Open();
                var sql = "SELECT * FROM ProductsDB WHERE ProductName = @ProductName";
                var product = connection.QuerySingle<Product>(sql, parameters);
                CultureInfo EuroCulture = new CultureInfo("fr-FR");
                txt_productprice.Text = product.Price.ToString("c", EuroCulture);

                // populating the quantity from the database and listing it from 1 to its maximum quantity
                for (int i = 1; i <= product.Quantity; i++)
                {
                    dropdownlist1.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

            }
         
        }

        // taking the objects from the database for further use in the application
        public class Product
        {
            public int ProductID { get; set; }
            public string ProductName { get; set; }
            public decimal Price { get; set; }
            public int Quantity { get; set; }
        }

        // collecting the text from the input boxes entered by the user and sending them as mail message
        protected void button11_Click(object sender, EventArgs e)
        {
            try
            {
                var from = "admin's e-mail";
                var to = "customer's e-mail";
                const string Password = "admin's password";
                string mail_subject = txt_subject13.Text.ToString();
                string mail_message = "Name and Surname: " + txt_nameandsurname13.Text + "\n";
                mail_message += "Your telephone number: " + txt_phone13.Text + "\n";
                mail_message += "Your address: " + txt_address13.Text + "\n";
                mail_message += "Your e-mail: " + txt_email13.Text + "\n";
                mail_message += "Product name: " + txt_product13.Text + "\n";
                mail_message += "Product price: " + txt_productprice.Text + "\n";
                mail_message += "Quantity of the product: " + dropdownlist1.SelectedValue + "\n";
                mail_message += "Payment method: " + dropdownlist13.SelectedValue + "\n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, Password);
                    smtp.Timeout = 20000;
                }

                smtp.Send(from, to, mail_subject, mail_message);

                confirm.Text = "Thank you for your order, our team will deliver the product you ordered at your home address as soon as possible.";

                txt_nameandsurname13.Text = "";
                txt_phone13.Text = "";
                txt_address13.Text = "";
                txt_email13.Text = "";
                txt_subject13.Text = "";
                txt_product13.Text = "";
                dropdownlist13.SelectedIndex = -1;

            }
            catch (Exception)
            {
                confirm.Text = "The order can't be proceed at the moment, please try again later.";
                confirm.ForeColor = Color.Red;
            }

            // decrement value from database
            string productName = Request.QueryString["productname"];
            var dictionary = new Dictionary<string, object>
            {
                {"@ProductName", productName }
            };
            var parameters = new DynamicParameters(dictionary);
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (var connection = new SqlConnection(CS))
            {
                connection.Open();
                int val = Convert.ToInt32(dropdownlist1.SelectedItem.Value);
                var sql = "UPDATE ProductsDB SET Quantity = Quantity - " + val + " WHERE ProductName = @ProductName";
                connection.Execute(sql, parameters);
            }
        }
    }
}