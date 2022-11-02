<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="UserMgmtWebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My First web page</h1>

        </div>
    <table align="center" cellpadding="5" 
        cellspacing="5" class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblName" 
                    runat="server" Font-Bold="True" 
                    Font-Size="Large" 
                    ForeColor="#0066FF" 
                    Text="Enter Your Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" 
                    runat="server" 
                    MaxLength="50" 
                    OnInit="txtName_Init" 
                    OnLoad="txtName_Load" 
                    OnPreRender="txtName_PreRender" OnTextChanged="txtName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnLoad="DropDownList1_Load" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">Jan</asp:ListItem>
                    <asp:ListItem Value="2">Feb</asp:ListItem>
                    <asp:ListItem Value="3">Mar</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btnOk" 
                    runat="server" Text="Click" OnClick="btnOk_Click" />
            </td>
        </tr>
    </table>
        <asp:Label 
            ID="lblMsg" runat="server" EnableViewState="False"></asp:Label>
    </form>
    </body>
</html>
