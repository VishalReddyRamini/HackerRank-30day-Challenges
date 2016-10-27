using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace insertUpdateDelete
{
    public partial class loginTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            string n = nameTxt.Text;
            string a = ageTxt.Text;
            using (SqlCommand cmd= new SqlCommand("insert into inform (name,email,age,mobilenumber,sex)"+ "values('"+n+ "','" + emailTxt.Text + "','" + a+ "','" + mobileTxt.Text + "','" + DropDownList1.SelectedValue + "')", cn))
            {
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
              SqlCommand cmd = new SqlCommand("select * from inform where id = " + TextBox5.Text, cn);
            
                cn.Open();
                using (SqlDataReader read = cmd.ExecuteReader())
                {
                    while (read.Read())
                    {
                    TextBox1.Text = (read["name"].ToString());
                    TextBox2.Text = (read["email"].ToString());
                    TextBox3.Text = (read["age"].ToString());
                    TextBox4.Text = (read["mobilenumber"].ToString());
                    DropDownList2.SelectedValue = (read["sex"].ToString());
                }
                }
                cn.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("UPDATE inform SET name=@name,age=@age,email=@email,mobilenumber=@number WHERE id=@id", cn);
            cn.Open();
            cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TextBox2.Text;

            cmd.Parameters.Add("@age", SqlDbType.Int).Value = TextBox3.Text;
            cmd.Parameters.Add("@number", SqlDbType.Int).Value = TextBox4.Text;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = TextBox5.Text;
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}