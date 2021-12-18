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
    public partial class edit : System.Web.UI.Page
    {


        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            using (SqlCommand cmd = new SqlCommand("SELECT  * FROM aspPrac where id='"+id+"'", con))
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
        protected void edituser(object sender, EventArgs e)
        {

        }
    }
}