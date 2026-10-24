<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio6.1.aspx.cs" Inherits="proyecto1.clase04.while01.ejercicio6__1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cálculo de Inversión Bancaria</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-100 min-h-screen flex items-center justify-center p-4">
    <form id="form1" runat="server" class="w-full max-w-lg">
        <div class="bg-white shadow-xl rounded-2xl p-8 border border-slate-100">
            
            <h2 class="text-2xl font-bold text-slate-800 mb-2 text-center">Simulador de Inversión</h2>
            <p class="text-sm text-slate-500 mb-6 text-center">Calcula tu capital al cabo de 1 año con 2% de interés mensual reinvertido.</p>

            <div class="space-y-5">
                
                <!-- Capital Inicial -->
                <div class="flex flex-col gap-2 bg-slate-50 p-4 rounded-xl border border-slate-200">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese el capital inicial a invertir ($):" CssClass="text-sm font-medium text-slate-700"></asp:Label>
                    <asp:TextBox ID="txtCapital" runat="server" CssClass="border border-slate-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white" placeholder="Ej: 1000"></asp:TextBox>
                </div>

                <!-- Botones para elegir Ciclo (For o While) -->
                <div class="grid grid-cols-2 gap-3 pt-2">
                    <asp:Button ID="btnCalcularFor" runat="server" OnClick="btnCalcularFor_Click" Text="Calcular con FOR" CssClass="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2.5 px-4 rounded-xl transition duration-200 shadow-md shadow-blue-500/20 cursor-pointer text-sm" />
                    
                    <asp:Button ID="btnCalcularWhile" runat="server" OnClick="btnCalcularWhile_Click" Text="Calcular con WHILE" CssClass="bg-emerald-600 hover:bg-emerald-700 text-white font-semibold py-2.5 px-4 rounded-xl transition duration-200 shadow-md shadow-emerald-500/20 cursor-pointer text-sm" />
                </div>

                <!-- Resultado Final -->
                <div class="bg-blue-50 p-4 rounded-xl text-center border border-blue-100 mt-4">
                    <span class="block text-xs font-semibold text-blue-700 uppercase mb-1">Monto Total al Cabo de 1 Año (12 Meses)</span>
                    <asp:Label ID="lblResultado" runat="server" CssClass="text-2xl font-bold text-slate-800">$0.00</asp:Label>
                </div>

                <!-- Etiqueta de Errores -->
                <div class="text-center pt-2">
                    <asp:Label ID="lblError" runat="server" CssClass="text-sm font-medium text-rose-500 block"></asp:Label>
                </div>

            </div>

        </div>
    </form>
</body>
</html>