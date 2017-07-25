<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
        
        Home</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

            <link href="/Style/StyleSheet.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_area" Runat="Server">

        
           
            
               <div class="col-md-2" style="padding-left:5px;  background-color:#fff;" >
                   
               </div>

               <div class="col-md-8" style="background-color:#fff;" id="course">
                  

                   <h1 style="text-align:center; "> Available Courses:</h1>
                    <hr/>

                   <div class="long-card">
                        <div class="course-img">
                           <img class="img-responsive" src="images/IES-LOGO.gif" alt="IES" title="IES"  />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>IES</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">Indian Engineering Services abbreviated as IES are the civil services that meet the technical and managerial functions of the Government of India.</p>
                       <p style="text-align:center; font-weight:bold;">
                           <a  href="Courses.aspx" target="_blank">Syllabus >></a>
                       </p>
                       <div class="register">
                           <asp:Button ID="ies" runat="server" CssClass="btn btn-success"  Text="Registration" OnClick="ies_Click" />
                       </div>
                   </div>

                   <div class="course-card">
                       <div class="course-img">
                           <img class="img-responsive" src="images/SSC-junior.jpeg" alt="IES" title="IES" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>SSE-JE</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">SSC-JE is an organization under Government of India.</p>
                       <p style="text-align:center; font-weight:bold;">
                           <a  href="Courses.aspx" target="_blank">Syllabus >></a>
                       </p>
                       <div class="register">
                           <asp:Button ID="ssc_je" runat="server" CssClass="btn btn-success"  Text="Registration" OnClick="ssc_je_Click" />
                       </div>
                   </div>

                   <div class="course-card">
                       <div class="course-img">
                           <img class="img-responsive" src="images/gate1.jpg" alt="Gate" title="Gate" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>GATE</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center;"> GATE is conducted jointly by the Indian Institute of Science.</p>
                       <p style="text-align:center; font-weight:bold;">
                           <a  href="Courses.aspx" target="_blank">Syllabus >></a>
                       </p>
                       <div class="register">
                           <asp:Button ID="gate" runat="server" CssClass="btn btn-success"  Text="Registration" OnClick="gate_Click" />
                       </div>
                   </div>

                   <div class="course-card">
                       <div class="course-img">
                           <img class="img-responsive" src="images/ssclogo.jpg" alt="" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>SSC</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">SSC is an organization under Government of India.</p>
                       <p style="text-align:center; font-weight:bold;">
                          <a  href="Courses.aspx" target="_blank">Syllabus >></a>
                       </p>
                       <div class="register">
                           <asp:Button ID="ssc" runat="server" CssClass="btn btn-success"  Text="Registration" OnClick="ssc_Click" />
                       </div>
                   </div>

                   <div class="long-card">
                        <h3 style="text-align:center">Faculty</h3>
                       <hr />
                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/head_hariom.jpg" alt="" />
                       </div>
                       <div class="course-area">
                         <div class="course-name">
                               <h4>Head Mr.Hariom Vishnoi</h4>
                           </div>  
                           
                       </div>
                           
                       <p style="text-align:center">Exp 35 years, Gate & IES(Mathmatics)</p>
                       
                   </div>

                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/Dir_Mahesh.jpeg" alt="" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>Dir. Mr. Mahesh Chandra</h4>
                           </div>
                           
                       </div>
                           
                       <p style="text-align:center">MTech,Exp 10 years</p>
                           
                       
                   </div>
                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/Pawan_kumar_faculty.jpg" alt="" />
                       </div>
                       <div class="course-area">
                          <div class="course-name">
                               <h4>Mr. Pawan Kumar Gangwar</h4>
                           </div> 
                       </div>
                           
                       <p style="text-align:center">MTech(Civil), SSC-JE Qualified, Gate 2 times Qualified,Exp 4 yr'<sup>s</sup></p>
                       
                   </div>

                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/Sunil_kumar.jpg" alt="" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>Mr. Sunil Kumar Yadav</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">BTech,M tech(EE), Exp 8 years </p>
                       
                   </div>

                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/Suraj.jpg" alt="" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>Mr. Suraj Gangwar</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">BTech ,Polytechnic(CE), Exp 5 years</p>
                       
                   </div>

                       <div class="course-card" style="min-height:303px;">
                       <div class="course-img">
                           <img class="img-responsive" src="images/blank_pic.png" alt="" />
                       </div>
                       <div class="course-area">
                           <div class="course-name">
                               <h4>Mr. Lalit Bisht</h4>
                           </div>
                           
                       </div>
                       <p style="text-align:center">BTech,Mtech(EE) IES& Gate Qualified, Exp-9 years</p>
                       
                   </div>
                   </div>



                       
                   
            
               </div>

               <div class="col-md-2"  >
                  
               </div>
          
    


</asp:Content>

