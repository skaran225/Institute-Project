<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login EEA</title>
                         <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="bootstrap-3.3.7/js/tests/vendor/jquery.min.js"></script>
        <link href="/Style/StyleSheet.css" rel="stylesheet" />
    <script src="Script/JavaScript.js"></script>
</head>
<body class="background">
    <form id="form1" runat="server">
    <div>
        <div class="container">
            <div class="login_container">
                <div class="login">
                    <div class="dp"></div>
                   <div id="usr">
                       <asp:TextBox ID="user" runat="server" placeholder="E-Mail"></asp:TextBox>
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="Enter user id" ForeColor="White"></asp:RequiredFieldValidator>
                   &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="user" ErrorMessage="Enter valid Email id" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </div >
                    <div id="pass">
                       <asp:TextBox ID="pass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Enter Password" ForeColor="White"></asp:RequiredFieldValidator>
                   </div>
                    <div id="sub">
                        <asp:Button ID="login_admin" runat="server" Text="Detail Login" OnClick="login_admin_Click" style="float:left; margin-left:15px;" />
                        <asp:Button ID="queryLogin" runat="server" Text="Query Login" style="float:right; margin-right:15px;" OnClick="queryLogin_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
