<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="ShowProfile.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.MasterPage.ShowProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background: linear-gradient(to top, lightgrey, whitesmoke)">
        <hr>
        <br />
    <div class="container-fluid justify-content-sm-end w-50">
  
                  <div class="row justify-content-md-end">
                     <div class="col justify-content-lg-end">
                        <center>
                           <p><h4 style="font:bold 50px verdana;">User Profile</h4></p>
                           
                                </center>
                     </div>
                  </div>
                        <hr>
                     
        </div>
                        <center>
                            <div class="col-3 mx-auto" style="display: flex">
                                <label><b>Name &nbsp &nbsp &nbsp</b></label>
                                <asp:TextBox class="form-control" ID="TextBox8" style="outline: 0; border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" runat="server" placeholder="User Name" ReadOnly="true"></asp:TextBox>
                           </div>

                               <div class="col-3 mx-auto" style="display: flex">
                        <label><b>Age&nbsp &nbsp &nbsp</b></label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" style="outline: 0; border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" runat="server" placeholder="Age" ReadOnly="true"></asp:TextBox>
                        </div>
                           </div>

                            <div class="col-3 mx-auto" style="display: flex">
                                <label><b>Email Address &nbsp &nbsp &nbsp</b></label>
                                <div class="form-group">
                                   <asp:TextBox class="form-control" style="outline: 0;border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" ID="TextBox1" runat="server" placeholder="Email Address" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-3 mx-auto"  style="display: flex"  >
                        <label><b>Contact &nbsp &nbsp &nbsp</b></label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox3" style="outline: 0; border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" runat="server" placeholder="Contact" ReadOnly="true"></asp:TextBox>
                        </div>
                                </div>

                             <div class="col-3 mx-auto"  style="display: flex"  >
                        <label><b>Address &nbsp &nbsp &nbsp</b></label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox4" style="outline: 0; border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" runat="server" placeholder="Address" ReadOnly="true"></asp:TextBox>
                        </div>
                                </div>

                             <div class="col-3 mx-auto" style="display: flex" >
                        <label><b>Role &nbsp &nbsp &nbsp</b></label>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox5" style="outline: 0; border-width: 0 0 2px; border-color:navy; background-color:transparent; text-align:center" runat="server" placeholder="Role" ReadOnly="true"></asp:TextBox>
                        </div>
                                </div>

                             <div class="col-3 mx-auto">
                        <label><b>Permissions: </b></label>

                                </div>
                            <asp:GridView ID="GridView2" runat="server" CssClass="m-lg-4">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-Font-Names="Courier New, monospace" HeaderStyle-HorizontalAlign="Center" ItemStyle-Font-Names="Courier New, monospace" ItemStyle-Width="30%"/>
                                        <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-Font-Names="Courier New, monospace"  ItemStyle-Font-Names="Courier New, monospace" ItemStyle-Width="80%"/>
                                    </Columns>
                                </asp:GridView>
                      
    <br />
 </div>
</asp:Content>
