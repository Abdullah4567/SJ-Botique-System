<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/Master Page/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.Master_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
         <img src="../../imgs/title-home.png" />
     </section>
    <
    <div class="container-fluid">
            <div class="card">
               <div class="card-body">
                        <center>
                          <img height="100" width="100" src="../../imgs/generaluser.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <p><h4>Sign Up</h4><asp:LinkButton ID="LinkButton1" runat="server">Already have an Account? Login.</asp:LinkButton></p>
                           </center>
                     </div>
                  </div>
                        <hr>
                     
        </div>
                        <center>
                           <span class="badge badge-pill badge-info">Credentials</span>
                       <div class="col-3 mx-auto">
                        <label>First Name</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="First Name"></asp:TextBox>
                        </div>
                           </div>
                            <div class="col-3 mx-auto">
                        <label>Last Name</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Last Name"></asp:TextBox>
                        </div>
                                </div>
                            <div class="col-3 mx-auto">
                        <label>Email Address</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Email Address"></asp:TextBox>
                        </div>
                                </div>
                            <div class="col-3 mx-auto">
                        <label>Create Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                             
               <div class="col-3 mx-auto">
                      <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Create Account" Width="200"/>
                               </div>

                        
                                </div>
     
                                </div>
                              <hr>
                            <hr />
                                <img src="../../imgs/footer-home.png" />
                        
</asp:Content>
