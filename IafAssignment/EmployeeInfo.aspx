<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="IafAssignment.EmployeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    
    <script type ="text/javascript">
        $(document).ready(function () {

            $('#txtDob').datepicker();


        })



    </script>
   

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>



        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IAF Assignment</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">DOB</td>
                <td>
                    <asp:TextBox ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Designation</td>
                <td>
                    <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Skill</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>JQUERY</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnAdd" runat="server" BackColor="#CCFF99" ForeColor="#9900FF" Text="ADD" OnClick="btnAdd_Click" />
        <asp:Button ID="btnDelete" runat="server" BackColor="#CCFF99" ForeColor="#9900FF" Text="DELETE" OnClick="btnDelete_Click" />
        <asp:Button ID="btnUpdate" runat="server" BackColor="#CCFF99" ForeColor="#9900FF" Text="UPDATE" OnClick="btnUpdate_Click" />
    </form>
</body>
</html>
