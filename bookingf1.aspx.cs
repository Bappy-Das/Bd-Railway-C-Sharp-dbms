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

public partial class bookingf1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tnumber = Convert.ToString(Session["trainno"]);
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        string sql;
        sql = "select * from Booking where Trainnumber='" + tnumber + "' ";
        cmd.CommandText = sql;
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con1;


            string sql1 = "select FC,AC,SChair from Booking where Trainnumber='" + tnumber + "' ";
            cmd1.CommandText = sql1;
            con1.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            int fcc = Convert.ToInt32(dr["FC"]);
            int ac3c = Convert.ToInt32(dr["AC"]);
            int slc = Convert.ToInt32(dr["SChair"]);
            int total = fcc + ac3c + slc;
            if (total > 0)
            {

                TextBox1.Text = Convert.ToString(dr["Trainname"]);
                TextBox2.Text = Convert.ToString(dr["Trainnumber"]);


            }
            else
            {

                Label1.Text = "Sorry!!! All seats have been reserved....";

            }




        }
        else
        {
            Label1.Text = "..";
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Convert.ToString(Calendar1.SelectedDate);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\train.mdf;Integrated Security=True;User Instance=True");
        con.Open();



        string sql = "insert into Ticket([Name],[TrainName],[TrainNumber],[From],[To],[ReservationDate],[Class],[NOP]) values ('" + TextBox7.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "')";

        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.ExecuteNonQuery();
        Label1.Text = " Under process please wait....";
        con.Close();



    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
}
