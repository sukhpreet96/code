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

namespace YK5_Forum.Home
{
	/// <summary>
	/// Summary description for Home.
	/// </summary>
	public partial class Home : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string UserName=Convert.ToString (Session["UserName"]);
			Session["UserName"]=UserName;

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

	

		protected void lnkDownload_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Articles/DownLoadArticle.aspx");
		
		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Articles/UploadArticle.aspx");

		}

		
		
	}
}
