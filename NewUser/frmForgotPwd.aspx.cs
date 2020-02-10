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
	/// Summary description for frmForgotPwd.
	/// </summary>
	public partial class frmForgotPwd : System.Web.UI.Page
	{
		//Class declaration
		general g = new general();

	
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

		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			
			string sql="select UserPassword from users where username='"+ txtUserName.Text +"' and PetName='"+ txtPetName.Text +"' and SecurityQuestion='"+drQuestions.SelectedItem.Text+"'and SecurityAnswer='"+txtAnswer.Text+"'";
			string a;
			a=g.ReturnString(sql);
			
			if (a=="")
			{
				txtUserName.Text="";
				txtPetName.Text="";
				txtAnswer.Text="";
				lblMessage.Text="Given Informations  are not valid.Try Again!";
			}

			else
			{
				Panel2.Visible=false;
				Panel3.Visible=false;
				Panel1.Visible=true;  
				lbl_P_UserName.Text=txtUserName.Text;
				lbl_P_Password.Text=a;
			}
		}
	}

}