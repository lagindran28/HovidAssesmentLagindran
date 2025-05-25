<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="HovidAssesmentLagindran.UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User List</title>
    <style>
    .container {
        width: 90%;
        margin: 50px auto;
        font-family: Arial, sans-serif;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .add-link {
        display: block;
        text-align: center;
        margin: 20px 0;
        font-weight: bold;
    }

    .gridview {
        width: 100%;
        border-collapse: collapse;
    }

    .gridview th,
    .gridview td {
        padding: 10px 12px;
        border: 1px solid #ccc;
        text-align: left;
        white-space: nowrap;
    }

    .gridview th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    .gridview tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .gridview tr:hover {
        background-color: #e6f7ff;
    }

    .gridview .edit-btn,
    .gridview .delete-btn {
        margin-right: 5px;
    }

    .gridview input[type="text"] {
        width: 100%;
        box-sizing: border-box;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>User List</h2>

            <asp:GridView ID="gvUsers" runat="server" CssClass="gridview" AutoGenerateColumns="False"
                OnRowEditing="gvUsers_RowEditing"
                OnRowUpdating="gvUsers_RowUpdating"
                OnRowCancelingEdit="gvUsers_RowCancelingEdit"
                OnRowDeleting="gvUsers_RowDeleting"
                DataKeyNames="UserID">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="True" />

                    <asp:TemplateField HeaderText="User Name">
                        <ItemTemplate>
                            <%# Eval("UserName") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditUserName" runat="server" Text='<%# Bind("UserName") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="User No">
                        <ItemTemplate>
                            <%# Eval("UserNo") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEditUserNo" runat="server" Text='<%# Bind("UserNo") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="CreateDate" HeaderText="Created" ReadOnly="True" />

                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            <asp:HyperLink ID="hlAddUser" runat="server" NavigateUrl="~/Register.aspx" CssClass="add-link">
                + Add New User
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>
