﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationAndLogin.Registration" %> 
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2 {
            height: 6px;
        }
        .style3 {
            font-size: x-large;
            background-color: #66FFFF;
        }
        .style4 {
            height: 8px;
            text-align: left;
        }
        .style5 {
            height: 23px;
        }
        .style6 {
            width: 148px;
            text-align: left;
        }
        .style7 {
            height: 23px;
            width: 148px;
            text-align: left;
        }
        .style8 {
            height: 8px;
            width: 148px;
            text-align: left;
        }
        .style10 {
            width: 148px;
            height: 23px;
        }
        .style11 {
            width: 148px;
            text-align: left;
            height: 30px;
        }
        .style12{
            height: 30px;
            text-align: left;
        }
        .style13{
            text-decoration: underline;
            color: #FF33CC;
            background-color: #CCFFFF;
        }
        .style14{
            text-align: left;
        }
        .style15{
            height: 23px;
            text-align: left;
        }
        .style16{
            height: 6px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="Registration" runat="server">
    <div style="height: 396px">
        <table class="style1">
            <tr>
                <td class="style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">Registration Page.</span>&nbsp;</span></strong>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>UserName</strong>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="style14">
                                <asp:TextBox ID="TextBox1" runat="server" Width="195px" AutoPostBack="true" OnDataBinding="TextBox1_TextChanged" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="UserName cannot be blank." Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>Password</strong>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    &nbsp
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password should not be blank." Font-Bold="true" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7">
                    <strong>Re-Type Password</strong>
                </td>
                <td class="style15">
                    <asp:TextBox ID="TextBox3" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    &nbsp
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Enter correct password." Font-Bold="true" Font-Size="Medium" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style11">
                    <strong>Mobile Number</strong>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="10" Width="195px"></asp:TextBox>
                    &nbsp
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid number." Font-Bold="true" Font-Size="Medium" ForeColor="Red" ValidationExpression="[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                    &nbsp
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Mobile number cannot be blank." Font-Bold="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <strong>Email Id</strong>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="195px"></asp:TextBox>
                    &nbsp
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter valid Email-Id." Font-Bold="true" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email-Id field cannot be blank." Font-Bold="true"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10"></td>
                <td class="style5">
                <rsv:CaptchaControl ID="captcha1" runat ="server" CaptchaLength="5" 
                CaptchaHeight ="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" ForeColor="#00FFCC" 
                BackColor="White" CaptchaChars="ABCDEFGHIJKLNPQRTUVXYZ12346789" 
                FontColor="Red" />

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <strong>Enter Captcha Image</strong>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="*"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Valid Captcha" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="true" Font-Size="Large" style="background-color:#99CCFF" Text="Submit" Width="121px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
