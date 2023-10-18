<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="WebAppAgenda.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Lista de usuários</h3>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceUsuarios" DataKeyNames="Id">
    <AlternatingItemTemplate>
        <tr style="background-color: #FFFFFF;color: #284775;">
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color: #999999;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            </td>
            <td>
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            </td>
            <td>
                <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            </td>
            <td>
                <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color: #E0FFFF;color: #333333;">
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                            <th runat="server">nome</th>
                            <th runat="server">Id</th>
                            <th runat="server">email</th>
                            <th runat="server">senha</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
            <td>
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            </td>
            <td>
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tbusuario] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tbusuario] ([nome], [email], [senha]) VALUES (@nome, @email, @senha)" SelectCommand="SELECT [nome], [Id], [email], [senha] FROM [tbusuario]" UpdateCommand="UPDATE [tbusuario] SET [nome] = @nome, [email] = @email, [senha] = @senha WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="senha" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="senha" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
