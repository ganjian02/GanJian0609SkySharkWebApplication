<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FreqFl.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.BM.FreqFl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manager
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" >
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="500px">
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx" Selected="False" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID" Selected="False"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem  Text="Frequent  Fliers" Value="Frequent  Fliers" Selected="True"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D789D" />
            <StaticItemTemplate>
                <%# Eval("Text") %>
            </StaticItemTemplate>
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Freuent Flier"></asp:Label></td>
                    <td></td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" BackColor="Red"></asp:Label></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server"   NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/Logoff.aspx">Loggff</asp:HyperLink></td>
                </tr>
                <tr>
                    <td>Total number for times Follown<asp:DropDownList ID="listTimesFlown" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList></td>
                    <td>Applicable discount percentage
                        <asp:DropDownList ID="lstDiscl" runat="server">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                        </asp:DropDownList> </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td>Customers who have paid more than a specified fare<asp:TextBox ID="txtFare" runat="server"></asp:TextBox></td>
                    <td>Applicable discount percentage<asp:DropDownList ID="lstDisc2" runat="server">
                        <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                                                      </asp:DropDownList> </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Button" Width="150px" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Width="400px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail"></asp:BoundField>
                                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=WIN-Q6PU1O0UHSH;Initial Catalog=ARPDatabase;Persist Security Info=True;User ID=sa;Password=20020321" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [EMail], [Discount] FROM [dtFrequentFliers]"></asp:SqlDataSource>
                    </td>
                </tr>
                </table>
            </div>
        </form>
</asp:Content>
