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

public partial class search1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "701" || TextBox2.Text == "Parabaat Express")
        {
            Response.Redirect("Parabaat.aspx");
        }
        else if (TextBox1.Text == "702" || TextBox2.Text == "Mahanagar Provati")
        {
            Response.Redirect("Mahanagar.aspx");
        }
        else if (TextBox1.Text == "705" || TextBox2.Text == "Jayantika Exprress")
        {
            Response.Redirect("Jayantika.aspx");
        }
        else if (TextBox1.Text == "708" || TextBox2.Text == "Subarna Express")
        {
            Response.Redirect("Subarna.aspx");
        }
        else if (TextBox1.Text == "703" || TextBox2.Text == "Tista")
        {
            Response.Redirect("Tista.aspx");
        }
        else
        {
            Label1.Text = "Invalid train number or train name!";
        }
    }
}
