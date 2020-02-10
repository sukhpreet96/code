<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.NewUser.frmForgotPwd" CodeFile="frmForgotPwd.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>frmForgotPwd</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#bc8f8f" background="#c8d2c6">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="LEFT: 95px; WIDTH: 768px; POSITION: absolute; l: 647px" cellSpacing="1"
				cellPadding="1" width="768" align="center" bgColor="#ffffff" border="0">
				<TR>
					<TD style="HEIGHT: 130px"><uc1:header id="Header1" runat="server"></uc1:header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 475px" background="#c8d2c6">
						<DIV class="hd">
							<P style="COLOR: blue"><asp:panel id="Panel2" runat="server"></P>
							<H1 style="COLOR: purple">Sorry That You're Having Trouble Signing In</H1>
							<P style="COLOR: blue">We know that not being able to sign in can be frustrating, 
								so we'll try to make this as quick and easy as possible.To get started, enter 
								your UserName!&nbsp;</asp:panel></P>
						</DIV>
						<asp:panel id="Panel1" runat="server" Width="747px" Height="112px" Visible="False">
							<P style="COLOR: blue" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
							<P style="COLOR: blue" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								Your UserName is:
								<asp:Label id="lbl_P_UserName" runat="server" ForeColor="Red">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;</P>
							<P style="COLOR: blue" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your 
								Password is&nbsp;:
								<asp:Label id="lbl_P_Password" runat="server" ForeColor="Red">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
							<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
						</asp:panel><asp:panel id="Panel3" runat="server">
							<TABLE id="Table2" style="WIDTH: 622px; HEIGHT: 210px" cellSpacing="1" cellPadding="1"
								width="622" align="center" border="0">
								<TR>
									<TD style="WIDTH: 148px">Enter Your UserName</TD>
									<TD>
										<asp:TextBox id="txtUserName" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px">Enter Your PetName</TD>
									<TD>
										<asp:TextBox id="txtPetName" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px; HEIGHT: 18px">Select Your Question</TD>
									<TD style="HEIGHT: 18px">
										<asp:DropDownList id="drQuestions" runat="server" Width="157px" AutoPostBack="True"></asp:DropDownList></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px">Give Your Answer</TD>
									<TD>
										<asp:TextBox id="txtAnswer" runat="server" Width="462px" TextMode="MultiLine"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px"></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px"></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 148px"></TD>
									<TD>
										<asp:Button id="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click"></asp:Button>
										<asp:Label id="lblMessage" runat="server" ForeColor="Blue"></asp:Label></TD>
								</TR>
							</TABLE>
						</asp:panel></TD>
				</TR>
				<TR>
					<TD><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
