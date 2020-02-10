<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.NewUser.UserLogin" CodeFile="UserLogin.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>UserLogin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="812" border="0" height="600" bgColor="#ffffff">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<FONT color="#003300" size="5"><STRONG>User Login</STRONG></FONT></TD>
				</TR>
				<TR>
					<TD align="center">
						<TABLE id="Table3" style="WIDTH: 408px; HEIGHT: 157px" cellSpacing="1" cellPadding="1"
							width="408" border="0">
							<TR>
								<TD style="WIDTH: 116px; HEIGHT: 39px">UserName</TD>
								<TD style="HEIGHT: 39px">
									<asp:TextBox id="TextBox1" runat="server" Width="216px"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 116px; HEIGHT: 41px">Password</TD>
								<TD style="HEIGHT: 41px">
									<asp:TextBox id="TextBox2" runat="server" Width="208px" TextMode="Password"></asp:TextBox></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 116px"></TD>
								<TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Button id="Button1" runat="server" Text="Login" onclick="Button1_Click"></asp:Button>
									<asp:Label id="Label2" runat="server" Width="40px" Visible="False">Label</asp:Label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 116px">
									<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="frmForgotPwd.aspx">Forgot Password?</asp:HyperLink></TD>
								<TD>
									<asp:Label id="Label1" runat="server">New User?</asp:Label>&nbsp;
									<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl="NewUserReg.aspx">Quick Registration</asp:HyperLink></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD align="left">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
