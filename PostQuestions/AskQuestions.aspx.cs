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
	/// Summary description for AskQuestions.
	/// </summary>
	public partial class AskQuestions : System.Web.UI.Page
	{
		general g=new general();
		protected void Page_Load(object sender, System.EventArgs e)
		{
			string id;
			id=Request.QueryString["id"];
			lblCategoryId.Text=id;
			if(!Page.IsPostBack)
			{
				string UserName=Convert.ToString(Session["UserName"]);
				if(g.scalar("select count(UserName) from Users where UserName='"+UserName+"'"))
				{

				}
				else
				{ 
					Response.Redirect("../NewUser/UserLogin.aspx");
				}
				Session["UserName"]=UserName;
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

		private void LinkButton2_Click(object sender, System.EventArgs e)
		{
			
		}

		

		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			string UserName=Convert.ToString(Session["UserName"]);
			string Qdate;
			int Category;
			Category=Convert.ToInt32(Request.QueryString["id"]); 
			Qdate=Convert.ToString(DateTime.Now.ToShortDateString());
			g.insert("insert into KeyWord values('"+txt_Q_Subject.Text+"')");
			string Key=g.ReturnString("select KeyId from Keyword where Keyword='"+txt_Q_Subject.Text+"'");
			g.insert("insert into Question values('"+UserName+"',"+Category+",'"+Key+"','"+Qdate+"','"+txt_Q_Title.Text+"','"+txt_Q_Description.Text+"')");

			Response.Redirect("../PostQuestions/UserView.aspx");
		}

		private void LinkButton1_Click(object sender, System.EventArgs e)
		{
		
		}

		private void Button1_Click(object sender, System.EventArgs e)
		{
		
		}
	}
}
