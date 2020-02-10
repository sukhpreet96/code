<%@ Page language="c#" Inherits="YK5_Forum.NewUser.ViewProfile" CodeFile="ViewProfile.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ViewProfile</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="rosybrown">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 95px; POSITION: absolute; TOP: 0px" cellSpacing="1"
				cellPadding="1" width="300" border="0">
				<TR>
					<TD></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" style="Z-INDEX: 102; LEFT: 95px; POSITION: absolute; TOP: 0px" height="600"
				cellSpacing="1" cellPadding="1" width="812" bgColor="#ffffff" border="0">
				<TR>
					<TD>
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD>
						<asp:datalist id="DataList1" runat="server" CellPadding="1" HorizontalAlign="Center" Height="810px"
							Width="584px">
							<SelectedItemStyle HorizontalAlign="Center" VerticalAlign="Top"></SelectedItemStyle>
							<EditItemStyle HorizontalAlign="Center" VerticalAlign="Top"></EditItemStyle>
							<AlternatingItemStyle HorizontalAlign="Center" VerticalAlign="Top"></AlternatingItemStyle>
							<SeparatorStyle HorizontalAlign="Center" VerticalAlign="Top"></SeparatorStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
							<ItemTemplate>
								<TABLE cellSpacing="5" cellPadding="5" width="400" bgColor="whitesmoke" border="0">
									<TR>
										<TH align="left">
											Member Name
										</TH>
										<TD><%# DataBinder.Eval(Container.DataItem, "UserName") %></TD>
									</TR>
									<TR>
									</TR>
									<TR>
										<TH align="left">
											Email
										</TH>
										<TD><%# DataBinder.Eval(Container.DataItem, "Email") %><BR>
										</TD>
									</TR>
									<TR>
									</TR>
									<TR>
										<TH align="left">
											Company</TH>
										<TD><%# DataBinder.Eval(Container.DataItem, "CompanyName") %></TD>
									</TR>
									<TR>
										<TH align="left">
											Joining Date</TH>
										<TD><%# DataBinder.Eval(Container.DataItem, "AccessDare") %></TD>
									</TR>
								</TABLE>
							</ItemTemplate>
							<FooterStyle HorizontalAlign="Center" VerticalAlign="Top"></FooterStyle>
							<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
						</asp:datalist></TD>
				</TR>
				<TR>
					<TD>
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
