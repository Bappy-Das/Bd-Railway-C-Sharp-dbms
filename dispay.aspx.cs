using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class dispay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string sql;
        sql = "select *from Ticket where name ='" + Session["username"] + "' and Status =2";
        cmd.CommandText = sql;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label6.Text = Convert.ToString(Session["username"]);
            Label2.Text = Convert.ToString(dr["TrainName"]);
            Label3.Text = Convert.ToString(dr["TrainNumber"]);
            Label4.Text = Convert.ToString(dr["PNR"]);
            Label5.Text = Convert.ToString(dr["Amount"]);
            Label7.Text = Convert.ToString(dr["ReservationDate"]);
            Label9.Text = Convert.ToString(dr["From"]);
            Label10.Text = Convert.ToString(dr["To"]);
            Label11.Text = Convert.ToString(dr["NOP"]);
            Session["rupee"] = Convert.ToString(dr["Amount"]);


        }
        else
            Label8.Text = "not reserved";
    }
    
}
