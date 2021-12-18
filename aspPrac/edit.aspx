<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="edit.aspx.cs" Inherits="aspPrac.edit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<asp:Repeater ID="rptCustomers" runat="server">

    <ItemTemplate>



              <div class="col-md-4">
              <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
                  <asp:TextBox ID="name" Text='<%# Eval("name") %>' runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="age">age</label>
   <asp:TextBox ID="age" Text='<%# Eval("age") %>' runat="server"></asp:TextBox>
  </div>
             <asp:Button ID="Button1" onclick="edituser" runat="server" Text="Button" />

         </div>
    </ItemTemplate>
</asp:Repeater>

















   </asp:Content>