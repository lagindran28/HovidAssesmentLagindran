<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HovidAssesmentLagindran.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .form-container {
            width: 400px;
            margin: 100px auto; /* Centers the form vertically and horizontally */
            padding: 30px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
        }

            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
            }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        input[type="text"] {
            width: 100%;
        }

        .button-row {
            text-align: center;
            padding-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Register</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text="User Name:" /></td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" Width="100%" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUserNo" runat="server" Text="User No:" /></td>
                    <td>
                        <asp:TextBox ID="txtUserNo" runat="server" Width="100%" /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-row">
                        <asp:Button ID="btnSave" runat="server" Text="Save User" OnClick="btnSave_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-row">
                        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="~/UserList.aspx">← Back to User List</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <asp:HiddenField ID="hfUserID" runat="server" />
        </div>
    </form>
</body>
</html>
