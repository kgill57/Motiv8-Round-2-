using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SendPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["lab4ConnectionString"].ConnectionString;
        con.Open();

        SqlCommand cmd = new SqlCommand("SELECT SUM(Reward.RewardAmount) FROM Reward, RewardEarned WHERE Reward.RewardID = RewardEarned.RewardID", con);

        decimal payment = (decimal)cmd.ExecuteScalar();

        Response.Write("<form action='https://www.paypal.com/cgi-bin/webscr' method='post' target='_top'>");
        Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='kylemcgill57@gmail.com'>");
        Response.Write("<input type='hidden' name='lc' value='US'>");
        Response.Write("<input type='hidden' name='item_name' value='Product1'>");
        Response.Write("<input type='hidden' name='amount' value='" + payment + "'>");
        Response.Write("<input type='hidden' name='currency_code' value='USD'>");
        Response.Write("<input type='hidden' name='button_subtype' value='services'>");
        Response.Write("<input type='hidden' name='no_note' value='0'>");
        Response.Write("<input type='hidden' name='bn' value='PP - BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest'>");
        Response.Write("<input type='image' src='https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif' border='0' name='submit' alt='PayPal - The safer, easier way to pay online!'>");
        Response.Write("<img alt='' border='0' src='https://www.paypalobjects.com/en_US/i/scr/pixel.gif' width='1' height='1'></form>");

        fillGridView();
    }

    protected void fillGridView()
    {
        try
        {

            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = ConfigurationManager.ConnectionStrings["lab4ConnectionString"].ConnectionString;

            sc.Open();
            // Declare the query string.
            SqlCommand cmd = new SqlCommand("SELECT RewardProvider.ProviderName, SUM(Reward.RewardAmount) AS [Total] FROM Reward, RewardProvider, RewardEarned WHERE RewardProvider.ProviderID = Reward.ProviderID AND Reward.RewardID = RewardEarned.RewardID GROUP BY RewardProvider.ProviderName", sc);

            cmd.ExecuteNonQuery();

            ShoppingCart.DataSource = cmd.ExecuteReader();
            ShoppingCart.DataBind();
            sc.Close();

        }
        catch
        {

        }
    }

    
}