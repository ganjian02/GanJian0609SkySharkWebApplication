<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRes.aspx.cs" Inherits="GanJian0609SkySharkWebApplication.NA.CreateRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Selected="True" Text="Create Reservation" Value="Create Reservation" ></asp:MenuItem>
                <asp:MenuItem Text="Cancle Reservation" Value="Cancle Reservation" NavigateUrl="CancelRes.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Quary  Status" Value="Quary  Status" NavigateUrl="QueryStat.aspx"></asp:MenuItem>
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
            <asp:Wizard ID="Wizard1" runat="server">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Search Flight">
                       
                        <table>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label2" runat="server" Text="Step 1: Specify ticket details" BorderStyle="Inset"></asp:Label></td>
                                <td></td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Flight Number"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtFltNo" runat="server"></asp:TextBox></td>
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
                                    <asp:Calendar ID="Cal1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" BorderWidth="2px" DayNameFormat="FirstTwoLetters"></asp:Calendar>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnNext" runat="server" Text="Next" BackColor="Silver" /></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Find Flight Fare & Status">
                        <table>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label6" runat="server" Text="Step 2: Confirm flight status
and fare with the customer" BorderStyle="Inset"></asp:Label></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtTNo" runat="server" Enabled="False"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Fare"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtFare" runat="server" Enabled="False"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtStatus" runat="server" Enabled="False"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Origin"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtOrg" runat="server" Enabled="False"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text="Destination"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtDest" runat="server" Enabled="False"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="Departure Time"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtDepTime" runat="server" Enabled="False"></asp:TextBox></td>
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
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Make Reservation">
                        <table>
                           <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label13" runat="server" Text="Step 3: Confirm booking" BorderStyle="Inset" Font-Names="Microsoft Sans Serif"></asp:Label></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="Name"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="Emial"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnCreate" runat="server" Text="Create Reservation" BorderColor="Blue" BackColor="Silver" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" BorderColor="Blue" BackColor="Silver" /></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</asp:Content>
