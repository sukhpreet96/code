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
	/// Summary description for UserView.
	/// </summary>
	public partial class UserView : System.Web.UI.Page
	{
		general g=new general();
		public int k;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			
			k=g.Returnvalue("select top 1 QuestionId from Question order by QuestionId desc");
            
			if(!Page.IsPostBack)
			{
				g.viewList("Select * from Question where QuestionId="+k+"",DataList1);
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

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			g.viewList("Select* from Question where QuestionId="+k+" ",DataList2);
			Panel1.Visible=true;
			g.viewList("Select* from Question where QuestionId="+k+" ",DataList1);
				
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
		g.insert("Update Question set Questions='"+txtAddInformation.Text+"' where QuestionId="+k+" ");
		lblMsg.Text="Edit Successfully";
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("../Home/Home.aspx");
		}
	}
}
