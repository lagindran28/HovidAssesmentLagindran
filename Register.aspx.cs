using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HovidAssesmentLagindran
{
    public partial class Register : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["HovidDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd;

                if (string.IsNullOrEmpty(hfUserID.Value))  // Add
                {
                    cmd = new SqlCommand("spAddUser", conn);
                }
                else  // Update
                {
                    cmd = new SqlCommand("sp_UpdateUser", conn);
                    cmd.Parameters.AddWithValue("@UserID", Convert.ToInt64(hfUserID.Value));
                }

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@UserNo", Convert.ToInt32(txtUserNo.Text.Trim()));

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("UserList.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }
    }
}