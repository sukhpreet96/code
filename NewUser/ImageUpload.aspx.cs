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
	/// Summary description for WebForm2.
	/// </summary>
	public partial class WebForm2 : System.Web.UI.Page
	{
		general g=new general();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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

		protected void btnUploadTheFile_ServerClick(object sender, System.EventArgs e)
		{
			string username=Convert.ToString(Session["UserName"]);			
			string image;
			image=System.IO.Path.GetFileName(uplTheFile.PostedFile.FileName);
			g.insert("update users set userimage='"+image+"' where username='"+username+"'");
		
		}
	}
}
