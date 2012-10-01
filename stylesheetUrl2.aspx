<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
      using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConn"].ToString()))
      {
          SqlCommand cmd = new SqlCommand("SELECT Name FROM UrlList WHERE Name LIKE '%css'", cn);
          cn.Open();
          SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
          rdr.Read();
          Response.Write(rdr[0].ToString()); //read a value
      }
  }
</script>

<html>
<head runat="server">
    <title>Stylesheet URL</title>
</head>
<body>
	<form runat="server">
		<asp:Repeater id="UrlList" runat="server">

		<HeaderTemplate>
		<table border="1" width="100%">
			<tr bgcolor="#b0c4de">
				<th>Name</th>
			</tr>
		</HeaderTemplate>

		<ItemTemplate>
			<tr bgcolor="#f0f0f0">
				<td><%#Container.DataItem("UrlList")%> </td>
			</tr>
		</ItemTemplate>

		<FooterTemplate>
		</table>
		</FooterTemplate>

		</asp:Repeater>
	</form>
<body/>
</html>