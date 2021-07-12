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
using System.Threading.Tasks;
using Dapper;

namespace GraduationThesis
{
    public partial class ServicesPage : System.Web.UI.Page
    {
        // refreshing the drop down list if the client scheduled a term in purpose not to show the scheduled term
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                LoadAppointments();
            }
          
        }
        // taking the objects from the database for further use in the application
        public class Appointments
        {
            public int AppointmentID
            {
                get; set;
            }
            public DateTime AppointmentStart
            {
                get; set;
            }
            public DateTime AppointmentEnd
            {
                get; set;
            }
            public bool IsTaken
            {
                get; set;
            }
            // formatting the way the terms are displayed in the drop down list
            public string AppointmentShow => $"{AppointmentStart:dd.MM.yyyy HH:mm} - {AppointmentEnd:HH:mm} ";
        }

        //collecting the text from the input boxes entered by the user and sending them as mail message
        protected void btn_send_Click(object sender, EventArgs e)
        {
            try
            {
                var from = "admin's e-mail";
                var to = "customer's e-mail";
                const string Password = "admin's password";
                string mail_subject = txt_subject.Text.ToString();
                string mail_message = "The brand of your device: " + dropdownlist.SelectedValue + "\n";
                mail_message += "Device Model: " + txt_model.Text + "\n";
                mail_message += "Name and Surname: " + txt_nameandsurname.Text + "\n";
                mail_message += "Email: " + txt_email.Text + "\n";
                mail_message += "The term for you appointment: " + appointments_dropdownlist.SelectedItem.Text + "\n";
                mail_message += "The problem of the device: " + txt_problem.Text + "\n";


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
                SetAppointment(int.Parse(appointments_dropdownlist.SelectedValue));
                LoadAppointments();

                confirm.Text = "Thank you for your appoinment, you will receive a confirmation e-mail as soon as possible!";

                dropdownlist.SelectedIndex = -1;
                txt_model.Text = "";
                txt_nameandsurname.Text = "";
                txt_email.Text = "";
                txt_subject.Text = "";
                txt_problem.Text = "";

            }
            catch (Exception)
            {
                confirm.Text = "Something went wrong! Please try to again in few minutes.";
                confirm.ForeColor = Color.Red;
            }

        }

        // updating the database after a term is scheduled in purpose not to be shown in the drop down list
        private void SetAppointment(int id)
        {
            string CS = ConfigurationManager.ConnectionStrings["terms"].ConnectionString;
            var dictionary = new Dictionary<string, object>
            {
                {"@AppointmentID",  id}
            };
            var parameters = new DynamicParameters(dictionary);

            using (var connection = new SqlConnection(CS))
            {
                connection.Open();
                var sql = "UPDATE AppointmentsDB SET IsTaken=1 WHERE AppointmentID=@AppointmentID";
                connection.Execute(sql,parameters);
            }
        }
        // showing only the free terms and not listing the already scheduled ones
        private void LoadAppointments()
        {

            string CS = ConfigurationManager.ConnectionStrings["terms"].ConnectionString;

            using (var connection = new SqlConnection(CS))
            {
                connection.Open();
                var sql = "SELECT AppointmentID, AppointmentStart, AppointmentEnd, IsTaken from AppointmentsDB WHERE IsTaken=0";
                var appointments = connection.Query<Appointments>(sql);

                appointments_dropdownlist.DataSource = appointments;
                appointments_dropdownlist.DataTextField = "AppointmentShow";
                appointments_dropdownlist.DataValueField = "AppointmentID";
                appointments_dropdownlist.DataBind();

            }


        }

    }
}