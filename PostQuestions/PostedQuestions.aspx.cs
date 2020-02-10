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

namespace YK5_Forum.PostQuestions
{
	/// <summary>
	/// Summary description for PostedQuestions.
	/// </summary>
	public partial class PostedQuestions : System.Web.UI.Page
	{
		general g=new general();
		
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string username=Convert.ToString(Session["username"]);
			string PostedQuestions;
			// Put user code to initialize the page here
			PostedQuestions=g.ReturnString(" select Questions from Question where userName='"+username+"'");
			lblPostedQuestion.Text=PostedQuestions;
			g.viewList(" select Answers from QA where QuestionId='5'",DataList1);

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

		protected void DataList1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}
