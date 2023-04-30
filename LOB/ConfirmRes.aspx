<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmRes.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.LOB.ConfirmRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem Text="Quary  Status" Value="Quary  Status" NavigateUrl="QueryStat.aspx"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D789D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Confirm a  Reservation"></asp:Label></td>
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
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Ticket No"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please specify a valid ticket number" ControlToValidate="txtTNo"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm Ticket" /></td>
                    <td></td>
                </tr>
                </table>
            </div>
        </form>
</asp:Content>
