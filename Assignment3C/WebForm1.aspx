<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment3C.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 123px;
        }
        .auto-style2 {
            width: 123px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">First Name</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please provide first name" ForeColor="#CC3300">*This field is required</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtLastName" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please provide last name" ForeColor="#CC3300">*This field is required</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please provide email" ForeColor="#CC3300">*This field is required</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Country</td>
                    <td>
                        <asp:DropDownList ID="lstCountry" runat="server" Width="170px" Height="16px">
                            <asp:ListItem>United Kingdom</asp:ListItem>
                            <asp:ListItem>United States</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please provide password" ForeColor="#CC3300">*This field is required</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Repeat Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="Pasword and repeat password must be same" ForeColor="#CC3300">*Passwords must match</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword2" Display="Dynamic" ErrorMessage="Please provide confirm password" ForeColor="#CC3300">*This field is required</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <p>
            <asp:TextBox ID="txtDisplay" runat="server" Height="209px" ReadOnly="True" TextMode="MultiLine" Width="468px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
