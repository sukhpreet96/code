<%@ Page language="c#" Inherits="YK5_Forum.PostQuestions.UserView" CodeFile="UserView.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>UserView</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 95px; WIDTH: 768px; POSITION: absolute; TOP: 0px; HEIGHT: 544px"
				cellSpacing="1" cellPadding="1" width="768" bgColor="#ffffff" border="1">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD>
						<P><asp:label id="Label1" runat="server" BorderColor="White" BorderStyle="Groove" Font-Bold="True"
								ForeColor="Navy" Width="184px">Your Open Question</asp:label></P>
						<P><asp:button id="Button1" runat="server" BorderColor="#0000C0" BorderStyle="None" ForeColor="#0000C0"
								Width="144px" BackColor="#E0E0E0" Text="Edit Your Question" onclick="Button1_Click"></asp:button>&nbsp;
							<asp:button id="Button3" runat="server" BorderColor="#0000C0" BorderStyle="None" ForeColor="#0000C0"
								BackColor="#E0E0E0" Text="Continue" onclick="Button3_Click"></asp:button></P>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<asp:datalist id="DataList1" runat="server">
							<ItemTemplate>
								<%# DataBinder.Eval(Container.DataItem, "Questions") %>
							</ItemTemplate>
						</asp:datalist><asp:panel id="Panel1" runat="server" Visible="False" Height="452px">
							<P>
								<asp:Label id="Label2" runat="server" Width="184px" ForeColor="Navy" Font-Bold="True" BorderStyle="Groove"
									BorderColor="White">Add More Informations</asp:Label></P>
							<P>&nbsp;</P>
							<P>
								<asp:DataList id="DataList2" runat="server">
									<ItemTemplate>
										<%# DataBinder.Eval(Container.DataItem, "Questions") %>
									</ItemTemplate>
								</asp:DataList></P>
							<P>
								<asp:TextBox id="txtAddInformation" runat="server" Width="528px" Height="180px" TextMode="MultiLine"></asp:TextBox></P>
							<P>
								<asp:Button id="Button2" runat="server" ForeColor="#0000C0" BorderStyle="None" BorderColor="#0000C0"
									Text="PostAgain" BackColor="#E0E0E0" onclick="Button2_Click"></asp:Button>&nbsp;
								<asp:Label id="lblMsg" runat="server"></asp:Label></P>
						</asp:panel></TD>
				</TR>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
