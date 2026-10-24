<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="proyecto1.clase04.while01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Favor digitar la cantidad de obreros</td>
                <td><asp:TextBox ID="txtCantidadObreros" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Favor ingrese las horas trabajadas</td>
                <td><asp:TextBox ID="txtHorasTrabajadas" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>El salario por cada trabajador es:</td>
                <td><asp:Label ID="lblresultado" runat="server" Text="[lblresultado]"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblmensaje" runat="server" Text="[Lblmensaje]"></asp:Label>
                </td>
            </tr>
        </table>

        <br />
        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
        <br /><br />
        <asp:Button ID="Btnejecutar" runat="server" Text="ejecutar" OnClick="Btnejecutar_Click" />
    </form>
</body>
</html>
