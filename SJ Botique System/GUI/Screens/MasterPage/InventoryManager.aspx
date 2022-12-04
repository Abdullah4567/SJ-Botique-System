<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Screens/MasterPage/Site2.Master" AutoEventWireup="true" CodeBehind="InventoryManager.aspx.cs" Inherits="SJ_Botique_System.GUI.Screens.MasterPage.WebForm2" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">  
  <hr />
    <center>
        <h1>   Inventory Manager </h1>

        <asp:GridView ID="GridView2" runat="server" CssClass="m-lg-4">
    <Columns>
        <asp:BoundField  DataField="Id" HeaderText="Sno"/>
        <asp:BoundField DataField="Policy_Type" HeaderText="Policy_Type"/>
        <asp:BoundField DataField="Description" HeaderText="Description"/>
       
         <asp:TemplateField>
        <ItemTemplate>
            <asp:Button ID="cmdView" class="btn btn-light" Text ="Delete" runat="server" CommandName="Delete" OnClick="cmdView_Click"/>
           
        </ItemTemplate>
    </asp:TemplateField>
    </Columns>
        </asp:GridView>


        


    </center>
        <hr />
</asp:Content>