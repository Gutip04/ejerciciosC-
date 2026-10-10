<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="proyecto1.ejerciciosCondicionales.WebForm4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Compra de vivienda</title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Label ID="Label1" runat="server"
                Text="Salario de comprador" />
            <asp:TextBox ID="ingresos1" runat="server" />
        </div>

        <div>
            <asp:Label ID="Label2" runat="server"
                Text="Costo casa" />
            <asp:TextBox ID="casa" runat="server" />
        </div>

        <br />

        <div>
            <asp:Button ID="Button1" runat="server"
                Text="Calcular"
                OnClick="Button1_Click" />
        </div>

        <br />

        <div>
            <asp:Label ID="Label3" runat="server"
                Text="Pago de enganche: " />
            <asp:Label ID="enganche1" runat="server" />
        </div>

        <div>
            <asp:Label ID="Label4" runat="server"
                Text="Pago parcial: " />
            <asp:Label ID="parcial1" runat="server" />
        </div>

    </form>
</body>
</html>
