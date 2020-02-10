<%@ Page language="c#" Inherits="YK5_Forum.PostQuestions.PostedQuestions" CodeFile="PostedQuestions.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PostedQuestions</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="rosybrown">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 95px; WIDTH: 854px; POSITION: absolute; TOP: 0px; HEIGHT: 562px"
				cellSpacing="1" cellPadding="1" width="854" border="0" bgColor="#ffffff">
				<TR>
					<TD style="HEIGHT: 72px">
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 549px">
						<P align="center">
							<asp:Label id="Label1" runat="server" ForeColor="Navy" Font-Bold="True" Width="240px" Height="24px">View Posted Questions</asp:Label></P>
						<P>
							<asp:Label id="lblPostedQuestion" runat="server" ForeColor="Navy" Font-Bold="True" Width="216px"
								Height="43px"></asp:Label></P>
						<asp:DataList id="DataList1" runat="server" Width="724px" Height="441px" onselectedindexchanged="DataList1_SelectedIndexChanged">
							<ItemTemplate>
								<table>
									<thead style="COLOR: maroon " style="FONT-WEIGHT: bold">
										Answers
									</thead>
									<p>&nbsp</p>
									<tr>
										<%# DataBinder.Eval(Container.DataItem,"Answers") %>
									</tr>
								</table>
							</ItemTemplate>
						</asp:DataList></TD>
				</TR>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
