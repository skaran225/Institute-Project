<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Query.aspx.cs" Inherits="Student_Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Query</title>
                             <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="bootstrap-3.3.7/js/tests/vendor/jquery.min.js"></script>
        <link href="/Style/StyleSheet.css" rel="stylesheet" />
    <script src="Script/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid" style="margin:0px;padding:0px;">

                            <div class="navigate" >

                    <div class="logo nav_prop active ">
                        <div class="icon_container" onclick="myFunction(this)">
                          <div class="bar1"></div>
                          <div class="bar2"></div>
                          <div class="bar3"></div>
                        </div>

                    </div>
                    <div class="name nav_prop"><h4>Easy Engineering Academy</h4></div>
                    <div class="bar nav_prop">

                        <ul id="smoth">
                            <li><a href="Login.aspx" target="_blank">Login</a></li>
                            <li><a href="#">contact</a></li>
                            <li><a href="Default.aspx">Courses</a></li>                            
                            <li><a href="Registration.aspx">Registraion</a></li>
                            <li><a href="#">home</a></li>
                            
                        </ul>
                    </div>
                </div>
            <div>
                <h1 style="text-align:center;margin-top:70px;">Student Queries</h1>
                <hr />
            </div>
        <div>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            </asp:UpdatePanel>
            <asp:GridView ID="grid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no" />
                    <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                    <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EEAConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Query]"></asp:SqlDataSource>


        </div>

    </div>
    </form>
</body>
</html>
