<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserMgmtAdmin.Master" AutoEventWireup="true" CodeBehind="SearchDisplay.aspx.cs" Inherits="UserMgmtWebForms.Admin.SearchDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script> 
        function goSearch() {
            var txtvalue = document.getElementById("main_txtSearch").value;
            if (txtvalue = '') {
                alert("please enter valid text");
            }
            else {
                var frm = document.getElementById("Form1")
                alert("")
            }

        }
    </script>
    </asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h5 class="smallHeading">Search and Display users</h5>
    <br />
    <div>
        <asp:HyperLink ID="hl1" runat="server" 
            NavigateUrl="~/admin/newuser.aspx" Text="Add New User"></asp:HyperLink>
    </div>
    <div>
        <table width="40%" align="center">
            <tr>
                <td>
                    <span>Enter name</span>
                    <asp:TextBox ID="txtSearch" 
                        runat="server"></asp:TextBox>
                    <%--<input type ="button" id = "btn1" value =" Search" onclick="goSearch()"
                        runat ="server"/>--%>
                    <asp:Button ID="btn1" runat="server"
                        Text="Search" OnClick="btn1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" OnLoad="GridView1_Load"></asp:GridView>
    </div>
</asp:Content>
