﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistrationAndLogin.Login"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width:100%;
        }
        .style2 {
            background-color:#FFFFFF;
        }
        .style3 {
            color:#FF66FF;
        }
        .style4{
            width:120px;
        }
    </style>
</head>
<body>
    <form id="Login" runat="server">
        <table class="style1">
            <tr>
                <td colspan="2">
                    <strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="style3">&nbsp; Login Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" style="color:#FF0000" Text="*"></asp:Label>
                        </span></span></strong>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    UserName</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="186px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="true" Font-Size="Large" style="background-color:#99CCFF" Text="Login" Width="121px" OnClick="Button1_Click" />
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Red" OnClick="LinkButton2_Click">New User</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">Forget Password</asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
