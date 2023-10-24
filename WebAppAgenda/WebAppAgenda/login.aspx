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
            <asp:Panel ID="pnlDataEvento" runat="server" Width="461px" Height="38px" Visible="False">
                <asp:TextBox ID="txtDataEvento" runat="server" Visible="False"></asp:TextBox>
                <asp:Label ID="lblDataEvento" runat="server" Text="01/01/2024"></asp:Label>
                <asp:ImageButton ID="imgbtnCanEditarEvent" ImageAlign="Right" runat="server" Height="32px" 
                    ImageUrl="~/img/cancelar16_azul.png" 
                    OnClick="imgbtnCanEditarEvent_Click" Width="32px" Visible="False" />
                <asp:ImageButton ID="imgbtnConfirmar" runat="server" Height="32px" ImageAlign="Right" ImageUrl="~/img/confirme16_verde.png" OnClick="imgbtnConfirmar_Click" Visible="False" Width="32px" />
                <asp:ImageButton ID="imgbtnEditarEvento" runat="server" Height="32px" ImageAlign="Right" ImageUrl="~/img/editar16_azul.png" OnClick="imgbtnEditarEvento_Click" Width="32px" />
            </asp:Panel>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <br />


            <asp:Table ID="Table2" runat="server" BorderWidth="1" BorderStyle="Solid" BorderColor="Black" Width="246px">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" TargetControlID="TextBox2" />
                    </asp:TableCell>
                    <asp:TableCell>                   
                        <asp:ImageButton ID="imgbtnCancelarDtEve" ImageAlign="Right" ImageUrl="~/img/cancelar16_azul.png" OnClick="imgbtnCancelarDtEve_Click" runat="server" />
                    </asp:TableCell>    
                    <asp:TableCell>
                        <asp:ImageButton ID="imgbtnConfirmarDtEve" ImageAlign="Right"  ImageUrl="~/img/confirme16_verde.png" OnClick="imgbtnConfirmarDtEve_Click" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />

            <asp:Table ID="Table3" runat="server" BorderWidth="1" BorderStyle="Solid" BorderColor="Black" Width="247px">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:ImageButton ID="imgbtnEditarDtEve" ImageAlign="Right"  ImageUrl="~/img/editar_16_16.png" OnClick="imgbtnEditarDtEve_Click" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            
            <asp:PlaceHolder ID="phDataEvento" runat="server"></asp:PlaceHolder>
            
            <br />
        </div>
    </form>
</body>
</html>
