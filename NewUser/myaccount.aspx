<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.NewUser.UserRegistrationForm2" CodeFile="MyAccount.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>UserRegistrationForm2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" height="600"
				cellSpacing="1" cellPadding="1" width="812" border="1" bgColor="#ffffff">
				<TR>
					<TD style="HEIGHT: 131px">
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="left">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="792" border="0" style="WIDTH: 792px; HEIGHT: 512px"
							bgColor="#ffffff">
							<TR>
								<TD style="WIDTH: 448px" align="center">
									<asp:label id="Label9" runat="server" ForeColor="Blue" Visible="False">Registration Made Successfully...</asp:label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 448px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR>
									<DIV><FONT class="v11b" style="FONT-WEIGHT: bold; COLOR: #ff3300">Welcome&nbsp;
											<asp:Label id="lblusername" runat="server" ForeColor="Blue" Visible="False" Font-Bold="True"></asp:Label></FONT></DIV>
									<DIV><BR>
										<BR>
										<FONT class="v11"><B style="FONT-WEIGHT: bold; COLOR: #ff3300">You can Edit all your 
												submissions from this page:</B>
											<BR>
											<BR>
									</DIV>
									<DIV>
										<LI style="FONT-WEIGHT: bold; COLOR: #ffa06f">
											<asp:HyperLink id="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="UserLogin.aspx">Sign Out</asp:HyperLink>
											&nbsp;- Logout from&nbsp; yk5forum.com
											<BR>
											<BR>
										</LI>
									</DIV>
									<LI>
										<asp:HyperLink id="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="ViewProfile.aspx">View My Profile</asp:HyperLink>
										<BR>
										<BR>
									<LI style="FONT-WEIGHT: bold; COLOR: #ffa06f">
										<asp:HyperLink id="HyperLink3" runat="server" Font-Bold="True" NavigateUrl="EditProfile.aspx">Edit My Personal Information</asp:HyperLink>
										- Edit Name &amp; Address etc.&nbsp;
										<BR>
										<BR>
									<LI style="FONT-WEIGHT: bold; COLOR: #ffa06f">
										<asp:HyperLink id="HyperLink4" runat="server" Font-Bold="True" NavigateUrl="ChangePassword.aspx">Change Password</asp:HyperLink>
										- Change your current password
										<BR>
										<BR>
									<LI style="FONT-WEIGHT: bold; COLOR: #ffa06f">
										<asp:HyperLink id="HyperLink5" runat="server" Font-Bold="True" NavigateUrl="ImageUpload.aspx">Upload Photo </asp:HyperLink>- 
										Upload a small photo to attach with your profile&nbsp;
										<P>&nbsp;</P>
									<LI>
										<P style="FONT-WEIGHT: bold; COLOR: #ffa06f">
											<asp:HyperLink id="HyperLink6" runat="server" NavigateUrl="../PostQuestions/PostedQuestions.aspx"
												Font-Bold="True">View Your Questions</asp:HyperLink>-View Posted Your 
											Questions And Answers</P>
										<P>&nbsp;</P>
										<P>&nbsp;</P>
										<P>&nbsp;</P>
										<P>&nbsp;</P>
										<P>
											<BR>
											<BR>
											</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</P>
									</LI>
								</TD>
							</TR>
							<TR>
								<TD style="WIDTH: 448px"></TD>
							</TR>
						</TABLE>
						&nbsp;</TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
