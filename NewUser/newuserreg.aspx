<%@ Page language="c#" Inherits="YK5_Forum.NewUser.WebForm1" CodeFile="NewUserReg.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#bc8f8f">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="812" bgColor="#ffffff" border="0">
				<TR>
				</TR>
				<TR>
					<TD style="HEIGHT: 35px"><uc1:header id="Header1" runat="server"></uc1:header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 244px">
						<P class="MsoNormal"><SPAN class="v11b"><B style="mso-bidi-font-weight: normal"></B></SPAN>&nbsp;</P>
						<P class="MsoNormal"><SPAN class="v11b"><B style="mso-bidi-font-weight: normal"><A title="Home" href="vid://index.aspx">Home</A>
								</B></SPAN><SPAN class="v11b"><B style="mso-bidi-font-weight: normal"><SPAN style="FONT-SIZE: 7.5pt; COLOR: fuchsia">
										»</SPAN> <SPAN style="COLOR: orangered">Register</SPAN></SPAN></B></SPAN>
							<BR>
							<BR> <!--<span border=0 align=center><iframe align=center src="http://ads.aspalliance.com/displayad.aspx?a=974&amp;m=68" height="27" width="408" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"><script type="text/javascript" src="http://ads.aspalliance.com/displayad.aspx?a=974&amp;m=68&amp;target=_parent&amp;js=1"></script></iframe></span>
								<br>-->  <!-- There should be nothing below this. --><BR>
							<SPAN style="COLOR: blue">Register Now!</SPAN> <B style="mso-bidi-font-weight: normal">
								Some of the benefits for registered users:&nbsp;</B>
							<o:p>&nbsp;</o:p></P>
						<P class="MsoNormal" style="MARGIN-LEFT: 0.5in; TEXT-INDENT: -0.25in; LINE-HEIGHT: 150%; mso-list: l0 level1 lfo1; tab-stops: list .5in"><SPAN style="FONT-FAMILY: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings"><SPAN style="mso-list: Ignore">v<SPAN style="FONT: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;
									</SPAN></SPAN></SPAN>You can submit sample code.
							<o:p></o:p></P>
						<P class="MsoNormal" style="MARGIN-LEFT: 0.5in; TEXT-INDENT: -0.25in; LINE-HEIGHT: 150%; mso-list: l0 level1 lfo1; tab-stops: list .5in"><SPAN style="FONT-FAMILY: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings"><SPAN style="mso-list: Ignore">v<SPAN style="FONT: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;
									</SPAN></SPAN></SPAN>Employers and recruiters search for IT talents in 
							member profile page.
							<o:p></o:p></P>
						<P class="MsoNormal" style="MARGIN-LEFT: 0.5in; TEXT-INDENT: -0.25in; LINE-HEIGHT: 150%; mso-list: l0 level1 lfo1; tab-stops: list .5in"><SPAN style="FONT-FAMILY: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings"><SPAN style="mso-list: Ignore">v<SPAN style="FONT: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;
									</SPAN></SPAN></SPAN>Receive special gifts for active participation 
							like replying to other user's questions, writing articles etc.
							<o:p></o:p></P>
						<P class="MsoNormal" style="MARGIN-LEFT: 0.5in; TEXT-INDENT: -0.25in; LINE-HEIGHT: 150%; mso-list: l0 level1 lfo1; tab-stops: list .5in"><SPAN style="FONT-FAMILY: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings"><SPAN style="mso-list: Ignore">v<SPAN style="FONT: 7pt 'Times New Roman'">&nbsp;&nbsp;&nbsp;&nbsp;
									</SPAN></SPAN></SPAN>Faster response to your queries to our team.</P>
						<P>&nbsp;</P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 51px"><FONT color="#003300" size="5"><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT color="#006600">
									Register</FONT></STRONG></FONT></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 721px" align="center">
						<TABLE id="Table2" style="WIDTH: 566px; HEIGHT: 118px" cellSpacing="1" cellPadding="1"
							width="566" border="0">
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label1" runat="server">User Name</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtusername" runat="server"></asp:textbox></TD>
								<TD align="center"><asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername" ErrorMessage="Enteer a User Name"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label2" runat="server">Password</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtpwd" runat="server" TextMode="Password"></asp:textbox></TD>
								<TD align="center"><asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter a Password"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 233px" align="center"><asp:label id="Label3" runat="server">Re-type Password</asp:label><FONT color="#ff0033">*</FONT></TD>
								<TD align="center"><asp:textbox id="txtretypepwd" runat="server" TextMode="Password"></asp:textbox></TD>
								<TD align="center"><asp:comparevalidator id="CompareValidator1" runat="server" ControlToValidate="txtretypepwd" ErrorMessage="Passwords do not match"
										ControlToCompare="txtpwd"></asp:comparevalidator></TD>
							</TR>
						</TABLE>
						<P><FONT color="#9900cc">-------------------------------------------------------------------------------------------------------------------------------------</FONT></P>
						<P>
							<TABLE id="Table3" style="WIDTH: 604px; HEIGHT: 188px" cellSpacing="1" cellPadding="1"
								width="604" border="0">
								<TR>
									<TD><asp:label id="Label4" runat="server">Full Name</asp:label><FONT color="#ff0033">*</FONT></TD>
									<TD><asp:textbox id="txtfullname" runat="server" Width="279px"></asp:textbox></TD>
									<TD><asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txtfullname" ErrorMessage="Enter Your Name"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD><asp:label id="Label10" runat="server">PetName</asp:label></TD>
									<TD><asp:textbox id="txtPetName" runat="server" Width="279px"></asp:textbox></TD>
									<TD><asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" ControlToValidate="txtfullname" ErrorMessage="Enter Your Pet Name"></asp:requiredfieldvalidator></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 25px"><asp:label id="Label5" runat="server">E-Mail</asp:label><FONT color="#ff0033">*</FONT></TD>
									<TD style="HEIGHT: 25px"><asp:textbox id="txtemail" runat="server" Width="280px"></asp:textbox></TD>
									<TD style="HEIGHT: 25px"><asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid EMail"
											ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator></TD>
								</TR>
								<TR>
									<TD><asp:label id="Label6" runat="server">Company/College(Optional)</asp:label><FONT color="#ff0033"></FONT></TD>
									<TD><asp:textbox id="txtcompany" runat="server" Width="280px"></asp:textbox></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD><asp:label id="Label7" runat="server">Home Page</asp:label></TD>
									<TD><asp:textbox id="txthomepage" runat="server" Width="280px"></asp:textbox></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 16px"><asp:label id="Label11" runat="server">Select Ur Question</asp:label></TD>
									<TD style="HEIGHT: 16px"><asp:dropdownlist id="drQuestions" runat="server" Width="240px"></asp:dropdownlist></TD>
									<TD style="HEIGHT: 16px"></TD>
								</TR>
								<TR>
									<TD><asp:label id="Label12" runat="server">Give your Answer</asp:label></TD>
									<TD><asp:textbox id="txtSecurityAnswer" runat="server" Width="280px"></asp:textbox></TD>
									<TD></TD>
								</TR>
								<TR>
									<TD><asp:label id="Label8" runat="server">Country</asp:label></TD>
									<TD><asp:dropdownlist id="drcountry" runat="server" Width="128px">
											<asp:ListItem Value="afghanistan">afghanistan</asp:ListItem>
											<asp:ListItem Value="argentina">argentina</asp:ListItem>
											<asp:ListItem Value="bahrain">bahrain</asp:ListItem>
											<asp:ListItem Value="bangladesh">bangladesh</asp:ListItem>
											<asp:ListItem Value="belgium">belgium</asp:ListItem>
											<asp:ListItem Value="bhutan">bhutan</asp:ListItem>
											<asp:ListItem Value="brazil">brazil</asp:ListItem>
											<asp:ListItem Value="canada">canada</asp:ListItem>
											<asp:ListItem Value="chile">chile</asp:ListItem>
											<asp:ListItem Value="china">china</asp:ListItem>
											<asp:ListItem Value="chyprus">chyprus</asp:ListItem>
											<asp:ListItem Value="czech-republic">czech-republic</asp:ListItem>
											<asp:ListItem Value="denmark">denmark</asp:ListItem>
											<asp:ListItem Value="egypt">egypt</asp:ListItem>
											<asp:ListItem Value="fiji">fiji</asp:ListItem>
											<asp:ListItem Value="ethiopia">ethiopia</asp:ListItem>
											<asp:ListItem Value="france">france</asp:ListItem>
											<asp:ListItem Value="germani">germani</asp:ListItem>
											<asp:ListItem Value="greece">greece</asp:ListItem>
											<asp:ListItem Value="hong kong">hong kong</asp:ListItem>
											<asp:ListItem Value="hungany">hungany</asp:ListItem>
											<asp:ListItem Value="iceland">iceland</asp:ListItem>
											<asp:ListItem Value="india">india</asp:ListItem>
											<asp:ListItem Value="indonesia">indonesia</asp:ListItem>
											<asp:ListItem Value="iran">iran</asp:ListItem>
											<asp:ListItem Value="iraq">iraq</asp:ListItem>
											<asp:ListItem Value="isrel">isrel</asp:ListItem>
											<asp:ListItem Value="italy">italy</asp:ListItem>
											<asp:ListItem Value="japan">japan</asp:ListItem>
											<asp:ListItem Value="jordan">jordan</asp:ListItem>
											<asp:ListItem Value="kenya">kenya</asp:ListItem>
											<asp:ListItem Value="korea">korea</asp:ListItem>
											<asp:ListItem Value="kuwait">kuwait</asp:ListItem>
											<asp:ListItem Value="lebanon">lebanon</asp:ListItem>
											<asp:ListItem Value="libya">libya</asp:ListItem>
											<asp:ListItem Value="malasia">malasia</asp:ListItem>
											<asp:ListItem Value="maldives">maldives</asp:ListItem>
											<asp:ListItem Value="mali">mali</asp:ListItem>
											<asp:ListItem Value="malta">malta</asp:ListItem>
											<asp:ListItem Value="mauritius">mauritius</asp:ListItem>
											<asp:ListItem Value="mexico">mexico</asp:ListItem>
											<asp:ListItem Value="nepal">nepal</asp:ListItem>
											<asp:ListItem Value="netherlands">netherlands</asp:ListItem>
											<asp:ListItem Value="newziland">newziland</asp:ListItem>
											<asp:ListItem Value="nigeria">nigeria</asp:ListItem>
											<asp:ListItem Value="norway">norway</asp:ListItem>
											<asp:ListItem Value="oman">oman</asp:ListItem>
											<asp:ListItem Value="other">other</asp:ListItem>
											<asp:ListItem Value="pakistan">pakistan</asp:ListItem>
											<asp:ListItem Value="palestine">palestine</asp:ListItem>
											<asp:ListItem Value="peru">peru</asp:ListItem>
											<asp:ListItem Value="philippines">philippines</asp:ListItem>
											<asp:ListItem Value="poland">poland</asp:ListItem>
											<asp:ListItem Value="portugal">portugal</asp:ListItem>
											<asp:ListItem Value="puerto-rico">puerto-rico</asp:ListItem>
											<asp:ListItem Value="qatar">qatar</asp:ListItem>
											<asp:ListItem Value="romania">romania</asp:ListItem>
											<asp:ListItem Value="russian-federation">russian-federation</asp:ListItem>
											<asp:ListItem Value="saudi-arabia">saudi-arabia</asp:ListItem>
											<asp:ListItem Value="seychelles">seychelles</asp:ListItem>
											<asp:ListItem Value="singapore">singapore</asp:ListItem>
											<asp:ListItem Value="south-africa">south-africa</asp:ListItem>
											<asp:ListItem Value="spain">spain</asp:ListItem>
											<asp:ListItem Value="sri-lanka">sri-lanka</asp:ListItem>
											<asp:ListItem Value="sweden">sweden</asp:ListItem>
											<asp:ListItem Value="switzerland">switzerland</asp:ListItem>
											<asp:ListItem Value="taiwan">taiwan</asp:ListItem>
											<asp:ListItem Value="thailand">thailand</asp:ListItem>
											<asp:ListItem Value="tanzania">tanzania</asp:ListItem>
											<asp:ListItem Value="turkey">turkey</asp:ListItem>
											<asp:ListItem Value="ukraine">ukraine</asp:ListItem>
											<asp:ListItem Value="united arab emirates">united arab emirates</asp:ListItem>
											<asp:ListItem Value="united kingdom">united kingdom</asp:ListItem>
											<asp:ListItem Value="united states">united states</asp:ListItem>
											<asp:ListItem Value="vietnam">vietnam</asp:ListItem>
											<asp:ListItem Value="yemen">yemen</asp:ListItem>
											<asp:ListItem Value="zaire">zaire</asp:ListItem>
											<asp:ListItem Value="zambia">zambia</asp:ListItem>
											<asp:ListItem Value="zimbabwe">zimbabwe</asp:ListItem>
										</asp:dropdownlist></TD>
									<TD></TD>
								</TR>
							</TABLE>
						</P>
						<P>
							<TABLE id="Table4" style="WIDTH: 606px; HEIGHT: 289px" cellSpacing="1" cellPadding="1"
								width="606" border="0">
								<TR>
									<TD>
										<P class="MsoNormal" style="LINE-HEIGHT: 150%"><SPAN style="FONT-SIZE: 10pt; LINE-HEIGHT: 150%; FONT-FAMILY: Arial">Detailed 
												Profile : (</SPAN><SPAN style="FONT-SIZE: 7.5pt; LINE-HEIGHT: 150%; FONT-FAMILY: Arial">Optional</SPAN><SPAN style="FONT-SIZE: 10pt; LINE-HEIGHT: 150%; FONT-FAMILY: Arial">). 
												Use this space to provide any information about you. Please do not post your 
												resume here.
												<BR>
												<SPAN style="COLOR: red">Please limit the length to less than&nbsp;25 lines. </SPAN>
												<BR>
												<SPAN style="COLOR: green">You may use HTML tags for formatting. Do not use tags 
													like TITLE, HEAD, TABLE, BODY etc (If you use those tags, we will delete your 
													profile).</SPAN></SPAN></P>
										<P class="MsoNormal" style="LINE-HEIGHT: 150%"><SPAN style="FONT-SIZE: 10pt; LINE-HEIGHT: 150%; FONT-FAMILY: Arial"><SPAN style="COLOR: green"><asp:textbox id="txtdetailedprofile" runat="server" TextMode="MultiLine" Width="590px" Height="160px"></asp:textbox></SPAN></SPAN></P>
									</TD>
								</TR>
							</TABLE>
						</P>
					</TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 42px" align="center"><asp:button id="Button2" runat="server" Width="56px" Text="Submit" onclick="Button2_Click"></asp:button>&nbsp;&nbsp;
						<asp:button id="Button3" runat="server" Text="Cancel"></asp:button></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 42px" align="left"><uc1:footer id="Footer1" runat="server"></uc1:footer></TD>
				</TR>
				<TR>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
