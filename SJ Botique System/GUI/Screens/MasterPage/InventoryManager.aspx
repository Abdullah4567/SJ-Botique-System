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

<%--        <br /><br />--%>

       


    </Columns>
        </asp:GridView>  





          

          <br /><br />

        <h3>Select the type of policy</h3>

        <br />


        <asp:RadioButtonList ID="policy_type" runat="server">
<asp:ListItem Value="Inventory" Selected="True"> Inventory Policy</asp:ListItem>
<asp:ListItem Value="Discount"> Discount Policy</asp:ListItem>
</asp:RadioButtonList>

<%--        <div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" value="Inventory" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault1">
    Inventory Policy
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" value="Discount" id="flexRadioDefault2" checked>
  <label class="form-check-label" for="flexRadioDefault2">
   Discount Policy
  </label>
</div>--%>

<%--        <input id="mytextbox" type="text" style="width: 45%;height: 100px;"/>--%>
        <input type="text" name="email" id="myTextBox" runat="server" style="width: 45%;height: 100px;" />

             <br />   

    
         <asp:Button ID="btn3" class="btn btn-primary" Text ="Add" runat="server" CommandName="Add" OnClick="Add_policy"/>

        

          

    </center>
        <hr />
</asp:Content>