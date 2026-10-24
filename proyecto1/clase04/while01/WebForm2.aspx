<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="proyecto1.clase04.while01.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cálculo de Comisiones y Sueldos</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7f6;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            width: 100%;
            max-width: 500px;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 22px;
            border-bottom: 2px solid #ecf0f1;
            padding-bottom: 10px;
        }

        p {
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
            line-height: 1.4;
        }

        .aspNetDisabled, input[type="text"], textarea {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            margin-bottom: 15px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, textarea:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.2);
        }

        textarea {
            resize: vertical;
        }

        .btn {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 15px;
            font-weight: 600;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
            margin-top: 5px;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        #validacion {
            color: #e74c3c;
            font-size: 13px;
            font-weight: 600;
            display: block;
            margin-top: 10px;
        }

        #resultado {
            background-color: #f9fbfb;
            border-left: 4px solid #2ecc71;
            padding: 12px;
            border-radius: 4px;
            font-size: 14px;
            margin-top: 15px;
            display: block;
            white-space: pre-line;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>Cálculo de Comisiones y Sueldos</h2>
            
            <p>Ingrese la cantidad de vendedores (n):</p>
            <asp:TextBox ID="txtN" runat="server" placeholder="Ej. 3"></asp:TextBox>
            
            <p>Ingrese los datos de cada vendedor por línea con el formato: <br /><strong>SueldoBase, Venta1, Venta2, Venta3</strong></p>
            <asp:TextBox ID="txtTiempos" runat="server" TextMode="MultiLine" Rows="5" Columns="40" placeholder="Ej:&#10;1200000, 150000, 200000, 100000&#10;1500000, 300000, 100000, 250000"></asp:TextBox>
            
            <asp:Button ID="Button2" runat="server" Text="Calcular Sueldos" CssClass="btn" OnClick="Button2_Click" />
            
            <asp:Label ID="validacion" runat="server" Text=""></asp:Label>
            
            <asp:Label ID="resultado" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>