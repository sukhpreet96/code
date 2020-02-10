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
	/// Summary description for UserLogin.
	/// </summary>
	public partial class UserLogin : System.Web.UI.Page
	{
	    
		general g = new general();

		protected void Page_Load(object sender, System.EventArgs e)
		{
			Session["UserName"]=TextBox1.Text;
			
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
		
			string ss="select count(username) from users where username='"+ TextBox1.Text +"' and userpassword='"+ TextBox2.Text +"' ";
			if(g.scalar(ss))
			{
				string ss1="select DATEDIFF(day,Accessdare,getdate())from users where username='"+ TextBox1.Text +"'";
				if(g.dayscheck(ss1,TextBox1.Text))
				{				
					
					Session["UserName"]=TextBox1.Text;
					Response.Redirect("../PostQuestions/AskQuestions.aspx");
				}
				else
				{
					Label2.Text="your Login Expired";
					Label2.Visible=true;
				}
			}
			else
			{
				Label2.Text="Login Failed";
				Label2.Visible=true;
			}
			
		}

	}
}
