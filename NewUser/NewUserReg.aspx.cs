using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace YK5_Forum.NewUser
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
	{
	
		general g=new general();

		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			//!Add Items for drQuestions
			if (!Page.IsPostBack)
			{
				drQuestions.Items.Add("Select");
				drQuestions.Items.Add("What is Your PetName");
				drQuestions.Items.Add("Who is Your First Class Teacher");
				drQuestions.Items.Add("Who is Your Role Model");
				drQuestions.Items.Add("What is your Favorite dish");
				drQuestions.Items.Add("What is your Favorite color");
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
			string image="Null";
			string AccessDare=Convert.ToString(DateTime.Now.ToShortDateString());	
			g.insert("insert into users values('"+ txtusername.Text +"','"+ txtpwd.Text +"','"+ txtfullname.Text +"','"+txtPetName.Text+"','"+ txtemail.Text +"','"+ txtcompany.Text +"','"+ txthomepage.Text +"','"+drcountry.SelectedItem.Text +"','"+ txtdetailedprofile.Text +"','"+drQuestions.SelectedItem.Text+"','"+txtSecurityAnswer.Text+"','"+AccessDare+"','"+ image +"')");
			Session["username"]=txtusername.Text;
			Response.Redirect("MyAccount.aspx");
			
			
		}

		private void Button4_Click(object sender, System.EventArgs e)
		{
		
		}

	}
}
