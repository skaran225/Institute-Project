<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="Style/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_area" Runat="Server">
     <div class="col-md-2" style="padding-left:5px;  background-color:#fff;" >

               </div>

               <div class="col-md-8" style="background-color:#fff;" id="course">
                  
                   <div class="long-card" style="cursor:auto;padding-left:4%;padding-right:4%;width:86%;">
                       <h1 style="text-align:center">Registration</h1>
                       <hr />
                       <div class="form-group">
                      <label for="usr">Name:</label>
                           <asp:TextBox ID="name" runat="server" CssClass="form-control" ></asp:TextBox>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter your name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                      <label for="pwd">Father Name:</label>
                        <asp:TextBox ID="fname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" ErrorMessage="Enter father name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                    </div>
                       <label for="pwd">Date of Birth:</label>
                       <div class="form-group">
                      
                          <asp:DropDownList ID="dd" runat="server" CssClass="form-control" style="width:32%;float:left;">
                              <asp:ListItem>DD</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                               
                           </asp:DropDownList>
                           
                           <asp:DropDownList ID="mm" runat="server" CssClass="form-control" style="width:32%;float:left;margin-left:2%;">
                                <asp:ListItem>MM</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                           </asp:DropDownList>
                           
                           <asp:DropDownList ID="yyyy" runat="server" CssClass="form-control" style="width:32%;float:left;margin-left:2%;" >
                               <asp:ListItem>year</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                           </asp:DropDownList> 
                           <br />
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yyyy" ErrorMessage="Select Date of birth" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                       <div class="form-group">
                      <label for="pwd">Select Branch:</label>
                           <asp:DropDownList ID="Branch" runat="server" CssClass="form-control">
                               <asp:ListItem>BTech</asp:ListItem>
                               <asp:ListItem>GTI(Polytechnic)</asp:ListItem>
                               <asp:ListItem>Other</asp:ListItem>
                           </asp:DropDownList>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Branch" ErrorMessage="Select Branch" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>

                       <div class="form-group">
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
                      <label for="pwd">Select Catagory:</label>
                           <asp:DropDownList ID="catagory" runat="server" CssClass="form-control">
                            <asp:ListItem>General</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>Minority</asp:ListItem>
                           </asp:DropDownList>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="catagory" ErrorMessage="Select Catagory" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                       <div class="form-group">
                           <label for="pwd">Address:</label>
                           <asp:TextBox ID="address" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="5"></asp:TextBox>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="address" ErrorMessage="Enter Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       </div>

                       <div class="form-group">
                           <label for="pwd">Phone no.:</label>
                           <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="phone" ErrorMessage="Enetr Phone no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       &nbsp;
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" ErrorMessage="Enter valid phone no." ForeColor="#CC0000" ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator>
                       </div>
                        <label for="pwd">E-Mail:</label>
                       <div class="form-group">
                     
                        <asp:TextBox ID="email" runat="server" CssClass="form-control" name="email"></asp:TextBox><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter E-mail" ControlToValidate="email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                      &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter valid email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </div>
                       <label for="pwd">Upload Photo:</label>
                       <br />
                       <asp:FileUpload ID="photo" runat="server"  CssClass="form-control" style="padding:0px; margin:0px;" />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Upload your photo" ControlToValidate="photo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                       <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info" style="margin-left:6%;margin-top:6%;" OnClick="Button1_Click"  />
                   </div>

                  
            
               </div>

               <div class="col-md-2" style="padding-left:5px;  background-color:#fff;" >

               </div>
</asp:Content>

