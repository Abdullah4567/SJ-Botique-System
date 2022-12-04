<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="ShowAndSearchProducts.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.MasterPage.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <center><h1>All Products</h1></center>
    <hr />
    <center>
 <asp:GridView ID="GridView1" runat="server" CssClass="m-lg-4">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name"/>
        <asp:BoundField DataField="Price" HeaderText="Price"/>
    </Columns>
</asp:GridView>
        </center>
</asp:Content>
