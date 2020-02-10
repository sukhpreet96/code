<%@ Register TagPrefix="uc1" TagName="Footer" Src="../UserControls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="../UserControls/Header.ascx" %>
<%@ Page language="c#" Inherits="YK5_Forum.NewUser.WebForm2" CodeFile="ImageUpload.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="javascript" type="text/javascript">

// <!CDATA[
function PreviewImage(wThis) 

{ 
document.getElementById("img1").src=wThis.value; 

}

// ]]>
		</script>
		<SCRIPT language="C#" runat="server">
					
					
						
void btnUploadTheFile_Click(object Source, EventArgs evArgs) 
{
  string strFileNameOnServer =   System.IO.Path.GetFileName(uplTheFile.PostedFile.FileName);
  string strBaseLocation ="D:\\yogaraj\\ODF\\uploadimages\\";
  
  if ("" == strFileNameOnServer) 
  {
    txtOutput.InnerHtml = "Error - a file name must be specified.";
    return;
  }

  if (null != uplTheFile.PostedFile) 
  {
    try 
    {
      uplTheFile.PostedFile.SaveAs(strBaseLocation+strFileNameOnServer);
      
    }
    catch (Exception e) 
    {
      txtOutput.InnerHtml = "Error saving <b>" + 
        strBaseLocation+strFileNameOnServer+"</b><br>"+ e.ToString();
    }
  }
}
		</SCRIPT>
	</HEAD>
	<body bgColor="rosybrown">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 95px; POSITION: absolute; TOP: 0px" height="600"
				cellSpacing="1" cellPadding="1" width="812" border="0" bgColor="#ffffff">
				<TR>
					<TD style="HEIGHT: 278px">
						<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 70px" align="left"><FONT color="#660000" size="5"><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								&nbsp;&nbsp; UpLoad Your Image</STRONG></FONT></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 70px" align="left"><FONT color="#660000" size="5"><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<IMG id="img1" style="WIDTH: 96px; HEIGHT: 96px" src="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</STRONG></FONT></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 71px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id="uplTheFile" type="file" onchange="return PreviewImage(this)" size="24" name="uplTheFile"
							runat="server"><INPUT id="btnUploadTheFile" type="button" value="Upload" name="btnUploadTheFile" runat="server"
							OnServerClick="btnUploadTheFile_Click"></TD>
				</TR>
				<TR>
					<TD style="HEIGHT: 24px">
						<uc1:Footer id="Footer1" runat="server"></uc1:Footer></TD>
				</TR>
				<span id="txtOutput" style="FONT: 8pt verdana" runat="server"></span>
			</TABLE>
		</form>
	</body>
</HTML>
