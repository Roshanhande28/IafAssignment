using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace IafAssignment
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetEmployeeinfo();

            }
        }


        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FL0LKD4\SQLEXPRESS;Initial Catalog=EmopyeeinfoDB;Integrated Security=True");
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            string iname = txtName.Text, Designation = txtDesignation.Text, Skills = DropDownList1.SelectedValue;
            DateTime cdate = DateTime.Parse(txtDob.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec Insert_SP '" + iname + "','" + cdate + "','" + Designation + "','" + Skills + "'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Record Saved Successfully.......')</script>");
            GetEmployeeinfo();
           

        }

        void GetEmployeeinfo()
        {
            SqlCommand cmd = new SqlCommand("exec Getemployeeinfo_SP", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string iname = txtName.Text, Designation = txtDesignation.Text, Skills = DropDownList1.SelectedValue;
            
            DateTime cdate = DateTime.Parse(txtDob.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec Update2_SP '" + iname + "','" + cdate + "','" + Designation + "','" + Skills + "'", con);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Record update Successfully.......')</script>");
            GetEmployeeinfo();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string iname = txtName.Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("exec Delete2_SP '" + iname + "'", con);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Record delete Successfully.......')</script>");
            GetEmployeeinfo();

        }
    }
}