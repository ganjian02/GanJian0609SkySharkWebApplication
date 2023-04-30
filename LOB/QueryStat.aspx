<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueryStat.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.LOB.QueryStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancelRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem Selected="True" Text="Quary  Status" Value="Quary  Status"></asp:MenuItem>
                <asp:MenuItem Text="Confirm Reservation" Value="Confirm Reservation" NavigateUrl="ConfirmRes.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D789D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Make a new Reservation"></asp:Label></td>
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
                </table>
                            <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid">
                                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid"></HeaderStyle>
                                <WizardSteps>
                                    <asp:WizardStep ID="WizardStep1" Title="Query Flight Status" runat="server">
                                        <table>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="Label2" runat="server" Text="Enquire about the status of flights"></asp:Label></td>
                                             <td></td>                                                                                                                                                                                                                                                                                                                                    
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text="Flight Number"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="txtFlifhtNo" runat="server"></asp:TextBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
                                                <td>
                                                    <asp:ListBox ID="lstClass" runat="server">
                                                        <asp:ListItem>Executive</asp:ListItem>
                                                        <asp:ListItem>Business</asp:ListItem>
                                                    </asp:ListBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                                                <td>
                                                    <asp:Calendar ID="calDepDate" runat="server"></asp:Calendar>
                                                </td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                    </asp:WizardStep>
                    
                                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Query Ticket Status">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Enquiry Ticket Status"></asp:Label></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                
                                                <td>
                                                    <asp:Button ID="btnTStatSubmit" runat="server" Text="Submit" /></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                    </asp:WizardStep>
                                </WizardSteps>
                            </asp:Wizard>
            </div>
        </form>
</asp:Content>
