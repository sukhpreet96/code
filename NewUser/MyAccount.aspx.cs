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
	/// Summary description for UserRegistrationForm2.
	/// </summary>
	public partial class UserRegistrationForm2 : System.Web.UI.Page
	{

		general g = new general();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string UserName=Convert.ToString(Session["username"]);
			if(g.scalar("select count(UserName) from Users where UserName='"+UserName+"'"))
			{
				Label9.Visible=true;
				lblusername.Text=UserName;
				lblusername.Visible=true;
				Session["username"]=UserName;
			}
			else
			{ 
				Response.Redirect("../NewUser/UserLogin.aspx");
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
	}
}
