<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Details.aspx.cs" Inherits="Student_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>
                         <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="bootstrap-3.3.7/js/tests/vendor/jquery.min.js"></script>
        <link href="/Style/StyleSheet.css" rel="stylesheet" />
    <script src="Script/JavaScript.js"></script>
</head>
<body >
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
                <h1 style="text-align:center;margin-top:70px;">Student Details</h1>
                <hr />
            </div>
        <div>
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <br />
            <asp:GridView ID="grid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="F_Name" HeaderText="Father Name" SortExpression="F_Name" />
                    <asp:BoundField DataField="D_O_B" HeaderText="D.O.B" SortExpression="D_O_B" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                    <asp:BoundField DataField="Apply_Course" HeaderText="Appled Course" SortExpression="Apply_Course" />
                    <asp:BoundField DataField="Catagory" HeaderText="Catagory" SortExpression="Catagory" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Phone_no" HeaderText="Phone no" SortExpression="Phone_no" />
                    <asp:BoundField DataField="E_Mail" HeaderText="E-Mail" SortExpression="E_Mail" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo" SortExpression="Photo" ControlStyle-Width="40px" ControlStyle-Height="40px" />
                    <asp:BoundField DataField="random_no" HeaderText="random no" SortExpression="random_no" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EEAConnectionString %>" SelectCommand="SELECT DISTINCT [Name], [F_Name], [D_O_B], [Branch], [Apply_Course], [Catagory], [Address], [Phone_no], [E_Mail], [Photo], [random_no] FROM [Registration]" UpdateCommand="UPDATE [Registration] SET  [Name]=@Name,[F_Name]=@F_Name, [D_O_B]=@D_O_B, [Branch]=@Branch, [Apply_Course]=@Apply_Course, [Catagory]=@Catagory, [Address]=@Address, [Phone_no]=@Phone_no, [E_Mail]=@E_Mail WHERE [random_no]=@random_no " DeleteCommand="DELETE FROM [Registration] WHERE [random_no]=@random_no"></asp:SqlDataSource>
        </ContentTemplate>
       
    </asp:UpdatePanel>
        </div>
    </div>
    </form>
</body>
</html>
