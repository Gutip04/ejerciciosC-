<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio4.aspx.cs" Inherits="proyecto1.clase04.while01.ejercicio4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Conteo de Calcomanías Vehiculares</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-100 min-h-screen flex items-center justify-center p-4">
    <form id="form1" runat="server" class="w-full max-w-xl">
        <div class="bg-white shadow-xl rounded-2xl p-8 border border-slate-100">
            
            <h2 class="text-2xl font-bold text-slate-800 mb-2 text-center">Tránsito Ciudad de México</h2>
            <p class="text-sm text-slate-500 mb-6 text-center">Ingrese el último dígito de la placa de cada auto separado por comas (Ej: 1, 3, 5, 8, 0).</p>

            <div class="space-y-5">
                
                <!-- Caja de texto para ingresar los dígitos -->
                <div class="flex flex-col gap-2 bg-slate-50 p-4 rounded-xl border border-slate-200">
                    <asp:Label ID="Label1" runat="server" Text="Últimos dígitos de las placas:" CssClass="text-sm font-medium text-slate-700"></asp:Label>
                    <asp:TextBox ID="txtDigitos" runat="server" CssClass="border border-slate-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white" placeholder="Ej: 1, 2, 4, 6, 8, 0"></asp:TextBox>
                </div>

                <!-- Botón de cálculo -->
                <div class="text-center pt-2">
                    <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular Calcomanías" CssClass="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2.5 px-6 rounded-xl transition duration-200 shadow-md shadow-blue-500/20 cursor-pointer" />
                </div>

                <!-- Resultados por Color en Tarjetas -->
                <div class="grid grid-cols-2 md:grid-cols-3 gap-3 pt-4 border-t border-slate-200 text-center">
                    <div class="bg-yellow-50 p-3 rounded-xl border border-yellow-200">
                        <span class="block text-xs font-semibold text-yellow-700 uppercase">Amarilla (1-2)</span>
                        <asp:Label ID="lblAmarilla" runat="server" CssClass="text-lg font-bold text-slate-800">0</asp:Label>
                    </div>
                    <div class="bg-pink-50 p-3 rounded-xl border border-pink-200">
                        <span class="block text-xs font-semibold text-pink-700 uppercase">Rosa (3-4)</span>
                        <asp:Label ID="lblRosa" runat="server" CssClass="text-lg font-bold text-slate-800">0</asp:Label>
                    </div>
                    <div class="bg-red-50 p-3 rounded-xl border border-red-200">
                        <span class="block text-xs font-semibold text-red-700 uppercase">Roja (5-6)</span>
                        <asp:Label ID="lblRoja" runat="server" CssClass="text-lg font-bold text-slate-800">0</asp:Label>
                    </div>
                    <div class="bg-emerald-50 p-3 rounded-xl border border-emerald-200">
                        <span class="block text-xs font-semibold text-emerald-700 uppercase">Verde (7-8)</span>
                        <asp:Label ID="lblVerde" runat="server" CssClass="text-lg font-bold text-slate-800">0</asp:Label>
                    </div>
                    <div class="bg-blue-50 p-3 rounded-xl border border-blue-200 col-span-2 md:col-span-2">
                        <span class="block text-xs font-semibold text-blue-700 uppercase">Azul (9-0)</span>
                        <asp:Label ID="lblAzul" runat="server" CssClass="text-lg font-bold text-slate-800">0</asp:Label>
                    </div>
                </div>

                <!-- Total de autos -->
                <div class="bg-slate-100 p-3 rounded-xl text-center border border-slate-200">
                    <span class="text-xs font-semibold text-slate-600 uppercase">Total Autos Procesados: </span>
                    <asp:Label ID="lblTotal" runat="server" CssClass="font-bold text-slate-800">0</asp:Label>
                </div>

                <!-- Label de errores -->
                <div class="text-center pt-2">
                    <asp:Label ID="lblError" runat="server" CssClass="text-sm font-medium text-rose-500 block"></asp:Label>
                </div>

            </div>

        </div>
    </form>
</body>
</html>