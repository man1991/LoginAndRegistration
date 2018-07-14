<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegistrationAndLogin.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1{
            color:#FF0000;
        }
        .style2{
            width:100%;
        }
        .style3{
            color:#3366FF;
        }
    </style>
</head>
<body style="height: 245px">
    <form id="Default" runat="server">
    <div style="height: 245px" class="style1">

        Welcome&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="Fuchsia" Text="*"></asp:Label>
        <br />
        <table class="style2">
            <tr>
                <td class="style3">
                    Hi friend! you can can redirect this page to your own page where you want to 
                    display this message.Here i have used session to transfer value to one page to 
                    another page.</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
