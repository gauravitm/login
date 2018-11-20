using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ApplicationServices;

public partial class StudentDashboard : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            lblUsername.Visible = false;
            lbladdress.Visible = false;
            lblage.Visible = false;
            lblmobile.Visible = false;            
            lblUsername.Text = Session["name"].ToString();
        }

        if (!IsPostBack)
        {
            BrowserInfo();
            GetUser_IP();
            DisplayAllRecords();
            grdStudentRecord.Visible = true;
            ViewStudentRecord();
        }
        
    }

    //method to bind grid
    public void ViewStudentRecord()
    {
        try 
        {
            int id = Convert.ToInt32(lblUsername.Text);
            connection.Open();
            SqlCommand cmd = new SqlCommand("StudentPersonal", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            //Session["userid"] =txtuid.Text;
            cmd.Parameters.AddWithValue("@uid", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                grdStudentRecord.Visible = true;
                grdStudentRecord.DataSource = ds;
                grdStudentRecord.DataBind();
            }
            else
            {
                grdStudentRecord.DataSource = null;
                
            }
            connection.Close();
        }
        catch (Exception ex)
        {
            lblErrorMeassage.Visible = true;
            string message = ex.Message;
            lblErrorMeassage.Text = message;
            

        }


    }

    //browser information display
    public void BrowserInfo()
    {
        if (Request.Browser.Type.Contains("Firefox")) // replace with your check
        {
            lblBrowserInfo.Text = "You are using Mozila Firefox";
        }
        else if (Request.Browser.Type.Contains("Chrome")) // replace with your check
        {
            lblBrowserInfo.Text = "You are using Google Chrome";
        }
        else if (Request.Browser.Type.Contains("Internet")) // replace with your check
        {
            lblBrowserInfo.Text = "You are using Internet Explorer";
        }
        else
        {
            lblBrowserInfo.Text = "Browser not identified";
        }
    }

    //getting ip address of user
    protected void GetUser_IP()
    {
        string VisitorsIPAddr = string.Empty;
        if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
        {
            VisitorsIPAddr = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
        }
        else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
        {
            VisitorsIPAddr = HttpContext.Current.Request.UserHostAddress;
        }
        lbluser.Text = "Your IP is- " + VisitorsIPAddr;
    }

    //code for getting all the information of user and dispaying on
    //the webpage
    public void DisplayAllRecords()
    {


    }


    //browser capabilitites

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(lblUsername.Text);
        //code for update button
        Response.Write("Update Button Clicked");
        connection.Open();
        SqlCommand cmd = new SqlCommand("StudentRecordUpdate", connection);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@userid", uid);
        //cmd.Parameters.AddWithValue("@", );
        cmd.Parameters.AddWithValue("@username", txtuid.Text);
        cmd.Parameters.AddWithValue("@age", txtage.Text);
        cmd.Parameters.AddWithValue("@address ", txtaddress.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.ExecuteNonQuery();
        connection.Close();
        lblErrorMeassage.Text = "Updatation done sucessfully.";
        lblErrorMeassage.ForeColor = Color.Green;
        ViewStudentRecord();
        grdStudentRecord.DataBind();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //code for add buton
        Response.Redirect("Add Course.aspx");
        lblUsername.Text = Session["name"].ToString();
    }

    //code for logout of user from the apllication
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //code to terminate current session of user
        Session.Abandon();
        Response.Redirect("Default.aspx?mode=logout");
    }

    protected void grdStudentRecord_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //TextBox t1 = (e.Row.FindControl("txtuid") as TextBox);
            Label l1 = (e.Row.FindControl("lblnname") as Label);
            txtuid.Text = l1.Text;
            Label L2 = (e.Row.FindControl("lblage") as Label);
            txtage.Text = L2.Text;
            Label L3 = (e.Row.FindControl("lblaaddress") as Label);
            txtaddress.Text = L3.Text;
            Label L4 = (e.Row.FindControl("lblmmobileno") as Label);
            txtmobile.Text = L4.Text;
        }

    }
}
