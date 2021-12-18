using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspPrac
{
    public partial class _Default : Page
    {
        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindRepeater();
            }
        }

        private void BindRepeater()
        {
           
                using (SqlCommand cmd = new SqlCommand("SELECT  * FROM aspPrac", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptCustomers.DataSource = dt;
                        rptCustomers.DataBind();
                    }
                }
            
        }


        protected void insertuser(object sender, EventArgs e)
        {
            string Name = name.Text;
            string Age = age.Text;

            con.Open();
            string sql = "insert into aspPrac(name,age) values('"+ Name + "','"+ Age + "')";
            SqlCommand cmd = new SqlCommand(sql,con);
            int status = cmd.ExecuteNonQuery();
            if(status>0)
            {
                Console.WriteLine( "success");
                Response.Redirect("Default.aspx");
            }else
            {
                Console.WriteLine( "failed");
            }
            con.Close();

        }
    }
}