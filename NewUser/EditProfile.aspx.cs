using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace YK5_Forum.NewUser
{
	/// <summary>
	/// Summary description for EditProfile.
	/// </summary>
	public partial class EditProfile : System.Web.UI.Page
	{
		
		general g = new general();
        public SqlConnection con = new SqlConnection("Data Source=APTTECH4;Initial Catalog=OnlineFourm;Integrated Security=True");	
		
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string un=Convert.ToString(Session["UserName"]);
			if (!Page.IsPostBack)
			{
				drQuestions.Items.Add("Select");
				drQuestions.Items.Add("What is Your PetName");
				drQuestions.Items.Add("Who is Your First Class Teacher");
				drQuestions.Items.Add("Who is Your Role Model");
				drQuestions.Items.Add("What is your Favorite dish");
				drQuestions.Items.Add("What is your Favorite color");
				con.Open();
				SqlCommand cmd = new SqlCommand("select * from users where username='"+un+"'",con); 
				SqlDataReader dr;
				dr=cmd.ExecuteReader();
				if(dr.Read())
				{
					txtusername.Text=dr[0].ToString();
					txtfullname.Text=dr[2].ToString();
					txtPetName.Text=dr[3].ToString();
					txtemail.Text=dr[4].ToString();
					txtcompany.Text=dr[5].ToString();
					txthomepage.Text=dr[6].ToString();
					drcountry.SelectedItem.Text=dr[7].ToString();
					drQuestions.SelectedItem.Text=dr[9].ToString();
					txtSecurityAnswer.Text=dr[10].ToString();
				}
				con.Close();
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			string un=Convert.ToString(Session["username"]);
			g.insert("update users set UserName='"+ txtusername.Text +"',Fullname='"+ txtfullname.Text +"',PetName='"+ txtPetName.Text +"',Email='"+ txtemail.Text +"',CompanyName='"+ txtcompany.Text +"',HomePage='"+ txthomepage.Text +"',Country='"+ drcountry.SelectedItem.Text +"',securityquestion='"+ drQuestions.SelectedItem.Text +"',securityanswer='"+ txtSecurityAnswer.Text +"' where UserName='"+ un +"'");
			Label2.Text="Profile Updated";
			Label2.Visible=true;
			txtusername.Text="";
			txtfullname.Text="";
			txtPetName.Text="";
			txtemail.Text="";
			txtcompany.Text="";
			txthomepage.Text="";
			drcountry.SelectedItem.Text="";
			drQuestions.SelectedItem.Text="";
			txtSecurityAnswer.Text="";
			Session["username"]=un;
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("EditProfile.aspx");
		}
	}
}
