using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //connection string
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    //processing on loading of page
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMsg.Visible = false;
    }
    

    //code for login of user using userid 
    //created by gaurav
    //created on 19/11/2018

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Session["userid"] = txtuid.Text;
        try
        {
            connection.Open();
            //defininf command to be used USP_Login is a stored procedure
            SqlCommand cmd = new SqlCommand("USP_Login", connection);
            //defining command type
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userid", Session["userid"]);
            int usercount = (Int32)cmd.ExecuteScalar();
            if(usercount==1)
            {
                string name = txtuid.Text.Trim();
                Session["name"] = name;
                Response.Redirect("StudentDashboard.aspx?Parameter="+txtuid.Text);
            }
            else
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "User Does Not Exist!!";
            }
            
        }
        catch (Exception ex)
        {
            lblErrorMsg.Visible = true;
            string message = ex.Message;
            lblErrorMsg.Text = message;
        }
        finally
        {
            connection.Close();
        }        
       
    }

    //redirecting to registration page
    protected void BtnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
}
