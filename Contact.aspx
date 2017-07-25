<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Contact us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="Style/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_area" Runat="Server">
    <div class="container">
        <h1 style="text-align:center">Contact Us</h1>
        <hr />
        <div>
             <div class="jumbotron " style="text-align:center; " id="text" >
                 <p >Location 1:</p>
    <p>Sleeper road gali no. 1 near Gurudwara C B Ganj ,Bareilly.</p>
                 <p>Location 2:</p>
                 <p>
                     Near Agarsen Park,Rampur Garden Bareilly.
                 </p>
                 <p>
                     Phone--9568937414,9557026804
                 </p>
  </div>
        </div>
        <div>
            <h1 style="text-align:center">For Query</h1>
            <hr />
            <div class="form-group" style="float:left;width:30%; margin-left:2%;">
                      <label for="usr">Name:</label>
                           <asp:TextBox ID="name" runat="server" CssClass="form-control" ></asp:TextBox>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter your name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
            <div class="form-group" style="float:left;width:30%;margin-left:2%;">
                           <label for="pwd">Phone no.:</label>
                           <asp:TextBox ID="phone" runat="server" CssClass="form-control" ></asp:TextBox>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="phone" ErrorMessage="Enetr Phone no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Enter Valid mobile no." ForeColor="#CC0000" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator>
                       </div>
            <div class="form-group" style="float:left;width:30%;margin-left:2%;">
                      <label for="pwd">Select Course:</label>
                           <asp:DropDownList ID="course" runat="server" CssClass="form-control">
                               <asp:ListItem>GATE</asp:ListItem>
                               <asp:ListItem>IES</asp:ListItem>
                               <asp:ListItem>SSC</asp:ListItem>
                               <asp:ListItem>SSC JE</asp:ListItem>
                           </asp:DropDownList>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="course" ErrorMessage="Select Course" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
            <div class="form-group">
                <label for="usr">Type any Query:</label>
                <asp:TextBox ID="qry" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Maximum 250 characters" ></asp:TextBox>
            </div>
            <div id="center">
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="submit_Click" />
            </div>
        </div>
    </div>
</asp:Content>

