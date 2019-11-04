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
public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Clear_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox5.Text = "";
        Label1.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "maveli" && TextBox2.Text == "16603")
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sql = "delete from maveli where station code='" + TextBox5.Text + "'";
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            Label1.Text = " successfully  inserted";


            con.Close();
        }

        else
        {
            Label1.Text = "No train";
        }

    }
}
