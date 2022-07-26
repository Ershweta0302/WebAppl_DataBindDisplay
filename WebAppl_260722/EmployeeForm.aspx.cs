using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebAppl_260722
{
    public partial class EmployeeForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-TQQIGB6\\SQLEXPRESS; initial catalog= WebAppliApi260722; integrated security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }
       
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("insert into  Employee(Name,Gender,Email,Phone,Country,Salary)values('" + textname.Text + "','" + Textgender.Text + "','" + Textemail.Text + "','" + Textphone.Text + "','" + Textcontery.Text + "','" + Textsalary.Text + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            Display();
            textname.Text="";
            Textgender.Text="";
            Textemail.Text = "";
            Textphone.Text = "";
            Textcontery.Text = "";
            Textsalary.Text = "";
        }
        public void Display()
        {
            con.Open();
            SqlCommand com = new SqlCommand("select * from  Employee", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            grd.DataSource = dt;
            grd.DataBind();

        }
    }
}