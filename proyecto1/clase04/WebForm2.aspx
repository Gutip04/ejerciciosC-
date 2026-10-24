<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="proyecto1.clase04.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Evaluación de Atleta</h2>
            
            <p>Ingrese los tiempos de los 10 días separados por comas (ej: 14, 15, 16, 12, 13, 15, 14, 16, 15, 14):</p>
            
            <asp:TextBox ID="txtTiempos" runat="server" Width="400px"></asp:TextBox>
            <br /><br />
            
            <asp:Button ID="Button1" runat="server" Text="Evaluar Atleta" OnClick="Button1_Click" />
            
            <br /><br />
            <asp:Label ID="validacion" runat="server" Text=""></asp:Label>
            
            <br /><br />
            <asp:Label ID="resultado" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
