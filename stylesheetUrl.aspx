<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stylesheet Target</title>

</head>
<body style="font-family: Arial, Helvetica, sans-serif">
    <form id="form1" runat="server">

    <!-- Table of URLs whose target links are stylesheet //-->
        <p><strong>Target link is stylesheet</strong><asp:GridView ID="GridView1" 
                runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataSourceID="SqlDataSource1" GridLines="Vertical" Width="464px" 
                ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

            <!-- Connect to SqlDataSource and get only stylesheet url //-->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Name FROM UrlList WHERE Name LIKE '%css'">
            </asp:SqlDataSource>
        </p>

        <!-- Table of URLs whose target links are NOT stylesheet //-->
        <p><strong>Target link is not stylesheet</strong><asp:GridView ID="GridView2" 
                runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataSourceID="SqlDataSource2" GridLines="Vertical" Width="462px" 
                ForeColor="Black">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <strong>

            <!-- Connect to SqlDataSource and get non stylesheet url //-->
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Name FROM UrlList WHERE Name NOT LIKE '%css'">
            </asp:SqlDataSource>
            </strong>
        </p>

        <!-- Table of URLs whose target links are NOT stylesheet //-->
        <p>
            &nbsp;<strong>Dump Table (Test area to see multiple page table)</strong>
        </p>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" 
        Width="685px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ParentUrl" HeaderText="ParentUrl" 
                SortExpression="ParentUrl" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <!-- Connect to SqlDataSource and get all data //-->
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [UrlList]"></asp:SqlDataSource>
    </form>
</body>
</html>
