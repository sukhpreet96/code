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
	/// Summary description for ChangePassword.
	/// </summary>
	public partial class ChangePassword : System.Web.UI.Page
	{
	
		general g = new general();
		string un;		
		protected void Page_Load(object sender, System.EventArgs e)
		{
			un=Convert.ToString(Session["UserName"]);
				
			txtusername.Text=un;
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
		
		//To Change the Password instead of OldPassword
			int a=Convert.ToInt32(g.insert("update users set UserPassword='"+ txtNewPwd.Text +"' where UserName='"+un+"' and UserPassword='"+txtOldPwd.Text+"'"));
		
			if (a==1)
				Label6.Text="Your Password Changed Successfully!";
			else
				Label6.Text="Your CurrentPassword Is Wrong TryAgain!";
		
		}
	}
}
