<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageDatabases.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.NA.ManageDatabases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administretor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="~/NA/ManageUsers.aspx" Text="Manage User" Value="Manage User"></asp:MenuItem>
                <asp:MenuItem  Text="Manage Database" Value="Manage Database" Selected="True"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D789D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="label1" runat="server" Text="Manage Database"></asp:Label></td>
                    <td></td>
                </tr>
                <tr><td></td>
                    <td >
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="../ChangePassword.aspx">Change Password</asp:HyperLink></td>
                    <td >
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="../Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                </tr>
                <tr>    
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </td>
                    <td></td><td></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnArchive" runat="server" Text="Archive information pertaining to flights that have departed."
                            BorderColor="Blue" BackColor="Silver" OnClick="btnArchive_Click" /></td>
                </tr>
                <tr>
                    <td></td><td></td><td></td><td></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update customer information for the frequent fliers program." BorderColor="Blue" BackColor="Silver" OnClick="btnUpdate_Click" /></td>
                </tr>
                </table>
            </div>
        </form>
</asp:Content>
