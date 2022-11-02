<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMgmtAdmin.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="UserMgmtWebForms.Admin.NewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h5 class="smallHeading">Add a new user</h5>
    <table align="center" 
        cellpadding="5" class="auto-style1"
        id="tbl1">
        <tr>
            <th>Name</th>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>DOB</th>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Gender</th>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="gender" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <th>Mobile</th>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Email</th>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Password</th>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>Role</th>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnLoad="DropDownList1_Load">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <th>&nbsp;</th>
            <td>
                <asp:Button ID="Button1" runat="server" Text="AddUser" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />


</asp:Content>
