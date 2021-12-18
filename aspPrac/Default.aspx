<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspPrac._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
 <div class="container">
     <div class="row">
         <div class="col-md-4">
              <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
                  <asp:TextBox ID="name" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="age">age</label>
   <asp:TextBox ID="age" runat="server"></asp:TextBox>
  </div>
             <asp:Button ID="Button1" onclick="insertuser" runat="server" Text="Button" />

         </div>

         <div class="col-md-8">
<asp:Repeater ID="rptCustomers" runat="server">
    <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th scope="col" style="width: 80px">
                    Id
                </th>
                <th scope="col" style="width: 120px">
                    Name
                </th>
                <th scope="col" style="width: 100px">
                   Age
                </th>
                 <th scope="col" style="width: 100px">
                   Action
                </th>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="lblContactName" runat="server" Text='<%# Eval("name") %>' />
            </td>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("age") %>' />
            </td>
            <td>
                     <a href="edit.aspx?id=<%# Eval("id") %>">Edit</a>                     <a href="#">Delete</a>
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
         </div>
     </div>
 </div>

</asp:Content>
