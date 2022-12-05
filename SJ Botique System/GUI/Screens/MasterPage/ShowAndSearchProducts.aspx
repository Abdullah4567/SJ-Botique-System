<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="ShowAndSearchProducts.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.MasterPage.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
          $(document).ready(function () {
              $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          });
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="../../imgs/upper-img-home.png" />
    <hr />
    <center><h1>All Products</h1></center>
    <hr />
<div class="row justify-content-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1000px">
                                            <Columns>
                                                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="False" />
                                                </asp:BoundField>
                                                 <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="False" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                           
                    </div>
        <br />

                      
    </asp:Content>
