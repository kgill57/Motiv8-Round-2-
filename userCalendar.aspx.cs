using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Text.RegularExpressions;

public partial class userCalendar : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lab4ConnectionString"].ConnectionString;
        if (!IsPostBack)
        {
            loadProfilePicture();
        }
    }

    protected void loadProfilePicture()
    {
        RewardProvider rp = new RewardProvider();
        con.Open();

        try
        {
            SqlCommand select = new SqlCommand();
            select.Connection = con;

            select.CommandText = "SELECT ProviderPicture FROM [dbo].[RewardProvider] WHERE ProviderID = " + Session["ProviderID"];
            string currentPicture = (String)select.ExecuteScalar();

            profilePicture.ImageUrl = "~/Images/" + currentPicture;
            lblUser.Text = (String)Session["ProviderName"];
        }
        catch (Exception)
        {

        }

        con.Close();
    }
}