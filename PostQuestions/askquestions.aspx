<%@ Register TagPrefix="uc1" TagName="AskQuestions" Src="../UserControls/AskQuestions.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.PostQuestions.AskQuestions" CodeFile="AskQuestions.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AskQuestions</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px; HEIGHT: 722px"
				cellSpacing="1" cellPadding="1" width="812" border="1">
				<TR>
					<TD bgColor="#ffffff">
						<P>
							<uc1:Header id="Header1" runat="server"></uc1:Header></P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 165px" bgColor="#ffffff">
						<TABLE id="Table4" style="WIDTH: 630px; HEIGHT: 160px" cellSpacing="1" cellPadding="1"
							width="630" border="0">
							<TR>
								<TD>
									<asp:Image id="Image1" runat="server" ImageUrl="file:///C:\Documents and Settings\bct\My Documents\My Pictures\question.jpg"></asp:Image></TD>
								<TD vAlign="top">
									<P><FONT class="v12b" color="#0000cc">Ask a Question to Our Team</FONT>
									</P>
									<P>Your question may be answered by one of our technical team members or other 
										technical visitors of our site.</P>
									<P><BR>
										&nbsp;</P>
								</TD>
							</TR>
							<TR>
								<TD></TD>
								<TD vAlign="top"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 521px" bgColor="#ffffff">
						<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0">
							<TR>
								<TD style="WIDTH: 121px" vAlign="top" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<P>
										<uc1:AskQuestions id="AskQuestions1" runat="server"></uc1:AskQuestions></P>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<P>&nbsp;</P>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
								<TD>
									<TABLE id="Table5" style="WIDTH: 634px; HEIGHT: 485px" cellSpacing="1" cellPadding="1"
										width="634" border="0">
										<TR>
											<TD height="1"><FONT color="#0000cc">Category</FONT></TD>
											<TD height="1">
												<asp:Label id="lblCategoryId" runat="server"></asp:Label></TD>
										</TR>
										<TR>
											<TD height="1">
												<P><FONT color="#0000cc">Question&nbsp;Title</FONT></P>
											</TD>
											<TD height="1">
												<P>
													<asp:TextBox id="txt_Q_Title" runat="server" Width="454px" BackColor="Honeydew" ForeColor="ActiveCaption"></asp:TextBox></P>
											</TD>
										</TR>
										<TR>
											<TD height="1">
												<P>&nbsp;</P>
											</TD>
											<TD height="1"><B>Give a meaningful title related to the question, instead of titles 
													like "Please help me", "Any one know the answer etc"</B>
											</TD>
										</TR>
										<TR>
											<TD height="1"><FONT color="#0000cc">Subject</FONT></TD>
											<TD>
												<asp:TextBox id="txt_Q_Subject" runat="server" AutoPostBack="True"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 267px" height="267">
												<P><FONT class="v12b" color="#0000cc">Question Description</FONT>
													<BR>
													<BR>
													<FONT color="brown">Provide details like which version
														<BR>
														of the software you are using, what platform you are running etc.
														<BR>
														If you are asking a question about your source code,
														<BR>
														you may include your code also here.</FONT></P>
												<P>&nbsp;</P>
											</TD>
											<TD style="HEIGHT: 267px">
												<P>
													<asp:TextBox id="txt_Q_Description" runat="server" Height="315px" Width="450px" TextMode="MultiLine"></asp:TextBox></P>
											</TD>
										</TR>
										<TR>
											<TD align="center" height="1"></TD>
											<TD>
												<asp:Button id="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click"></asp:Button></TD>
										</TR>
									</TABLE>
									<P>&nbsp;</P>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff">
						<P>
							<uc1:Footer id="Footer1" runat="server"></uc1:Footer></P>
					</TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff"></TD>
				</TR>
			</TABLE>
			<P>&nbsp;</P>
		</form>
	</body>
</HTML>
