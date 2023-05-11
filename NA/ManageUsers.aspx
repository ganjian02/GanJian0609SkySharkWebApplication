<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.NA.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administretor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Selected="True" Text="Manage User" Value="Manage User"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/NA/ManageDatabases.aspx" Text="Manage Database" Value="Manage Database"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D789D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="label1" runat="server" Text="Manage User Account"></asp:Label></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="../ChangePassword.aspx">Change Password</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="../Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                </tr>
                <tr >
                    <td colspan="3">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddUserName" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Delete Username"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDelUserName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Passeord"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnDelDelete" runat="server" Text="Delete" OnClick="btnDelDelete_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddConfPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label></td>
                    <td>
                        <asp:ListBox ID="lstAddRole" runat="server">
                            <asp:ListItem>BM</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                            <asp:ListItem>LOB</asp:ListItem>
                        </asp:ListBox></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAddSubmit" runat="server" Text="Submit" OnClick="btnAddSubmit_Click" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
