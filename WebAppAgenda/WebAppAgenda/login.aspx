<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebAppAgenda.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="288px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="174px"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="153px" />
            <br />
            <br />
            <asp:Label ID="lMsg" runat="server" BorderColor="Red" BorderStyle="Solid" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="pnlDataEvento" runat="server" Width="379px" Height="47px">
                <asp:TextBox ID="txtDataEvento" runat="server" Visible="False"></asp:TextBox>
                <asp:Label ID="lblDataEvento" runat="server" Text="01/01/2024"></asp:Label>
                <asp:ImageButton ID="imgbtnEditarEvento" ImageAlign="Right" runat="server" Height="27px" ImageUrl="~/img/editar_16_16.png" 
                    OnClick="imgbtnEditarEvento_Click" Width="30px" />
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
