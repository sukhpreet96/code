<%@ Page language="c#"   Inherits="YK5_Forum.NewUser.ChangePassword" CodeFile="ChangePassword.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ChangePassword</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="812" border="0" align="center" bgColor="#ffffff" height="600">
				<TR>
					<TD style="HEIGHT: 173px"><uc1:header id="Header1" runat="server"></uc1:header></TD>
				</TR>
				<TR>
					<TD>
						<TABLE id="Table2" style="WIDTH: 566px; HEIGHT: 184px" cellSpacing="1" cellPadding="1"
							width="566" border="0" align="center">
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label1" runat="server">User Name</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtusername" runat="server"></asp:textbox></TD>
								<TD align="center"></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label4" runat="server">Current Password</asp:label><FONT color="#ff7b00"></FONT></TD>
								<TD align="center"><asp:textbox id="txtOldPwd" runat="server" TextMode="Password"></asp:textbox></TD>
								<TD align="center"><asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" ControlToValidate="txtOldPwd" ErrorMessage="Enter older Password"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label2" runat="server">New Password</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtNewPwd" runat="server" TextMode="Password"></asp:textbox></TD>
								<TD align="center"><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Enter New Password"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label3" runat="server">Re-type New Password</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtretypepwd" runat="server" TextMode="Password"></asp:textbox></TD>
								<TD align="center"><asp:comparevalidator id="CompareValidator1" runat="server" ControlToValidate="txtretypepwd" ErrorMessage="Passwords does not match"
										ControlToCompare="txtNewPwd"></asp:comparevalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"></TD>
								<TD align="center"><asp:button id="Button1" runat="server" Text="Change" onclick="Button1_Click"></asp:button>&nbsp;&nbsp;
									<asp:button id="Button2" runat="server" Text="Exit"></asp:button></TD>
								<TD align="left">
									<asp:Label id="Label6" runat="server" ForeColor="#FF997B" Font-Bold="True"></asp:Label></TD>
							</TR>
						</TABLE>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="Label5" runat="server" Visible="False" ForeColor="#ff997b" Font-Bold="True">Your Password Has Been Changed</asp:label></TD>
				</TR>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
