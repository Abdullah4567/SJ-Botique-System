<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.Master_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
         <img src="../../imgs/upper-img-home.png" class="embed-responsive"/>
     </section>
    <div id="bghome">
        <hr>
        <br />
    <div class="container-fluid justify-content-sm-end w-50">
          <%--  <div class="card justify-content-md-end">
               <div class="card-body justify-content-md-end">  --%>
                        <center>
                          <img height="100" width="100" src="../../imgs/user.png"/>
                        </center>
                    <%-- </div>
                  </div>
                         --%>
                  <div class="row justify-content-md-end">
                     <div class="col justify-content-lg-end">
                        <center>
                           <p><h4 style="font:bold 50px verdana;">Sign Up</h4><asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click"><p style="color:white;font:italic 15px verdana;">Already have an Account? Login.</p></asp:LinkButton></p>
                           
                                </center>
                     </div>
                  </div>
                        <hr>
                     
        </div>
                        <center>
                           <span class="badge badge-pill badge-info">Credentials</span>
                       <div class="container justify-content-md-end">
                           <div class="row justify-content-md-center w-50">
                            <div class="col-6">
                        <label><b>Full Name</b></label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder=""></asp:TextBox>
                        </div>
                           </div>
                               <div class="col-2">
                        <label><b>Age</b></label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder=""></asp:TextBox>
                        </div>
                           </div>

                           </div>
                            </div>
                            <div class="col-3 mx-auto">
                        <label><b>Email Address</b></label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                        </div>
                                </div>
                            <div class="col-3 mx-auto">
                       <%-- <b>Password</b><br /><input type="password" id="inputpass" width="200px">  
                                <label><b>Create Password</b></label>
                                <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            </div>  
                                --%>
                                <b>Password</b>   <br /> <input type="password" id="inputpass"><br />
                                <div class="row justify-content-md-start">
                                 &nbsp &nbsp &nbsp<input id="Checkbox1" type="checkbox" onclick="toggle()"/>&nbsp<i> Show Password</i>
                                    </div>
                                    <br />
               <div class="col mx-auto">
                      <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Create Account" Width="300"/>
                               </div>
                        
                                </div>
     
                                </div>
                      </div>
    <br />
 
                                <img src="../../imgs/bottom-img-home.png" class="embed-responsive"/>
                     
</asp:Content>
