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
public partial class adminreserve : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["rupee"] = Convert.ToInt32(TextBox2.Text);
        Int32 amnt = Convert.ToInt32(TextBox2.Text);
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        string sql = "update credit set balance=balance-" + amnt + " where name='" + TextBox1.Text + "' ";
        cmd.CommandText = sql;
        cmd.ExecuteNonQuery();
        Label1.Text = " successfully  inserted";


    }
}
