<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="proyecto1.clase04.while01.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Contador de Géneros</title>
    <!-- Incluimos Tailwind CSS para un diseño moderno y limpio -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-100 min-h-screen flex items-center justify-center p-4">
    <form id="form1" runat="server" class="w-full max-w-xl">
        <div class="bg-white shadow-xl rounded-2xl p-8 border border-slate-100">
            
            <!-- Título Principal -->
            <h2 class="text-2xl font-bold text-slate-800 mb-6 text-center">Registro y Conteo de Géneros</h2>

            <!-- Contenedor del Formulario -->
            <div class="space-y-5">
                
                <!-- Fila de Entrada -->
                <div class="flex flex-col md:flex-row md:items-center justify-between gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200">
                    <asp:Label ID="Label1" runat="server" Text="Ingrese 1 para Masculino y 2 para Femenino (separados por comas):" CssClass="text-sm font-medium text-slate-700 md:max-w-xs"></asp:Label>
                    <asp:TextBox ID="txtGenero" runat="server" CssClass="border border-slate-300 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white" placeholder="Ej: 1,2,1,1"></asp:TextBox>
                </div>

                <!-- Botón Calcular -->
                <div class="text-center pt-2">
                    <asp:Button ID="calcular" runat="server" OnClick="calcular_Click" Text="Calcular Resultados" CssClass="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2.5 px-6 rounded-xl transition duration-200 shadow-md shadow-blue-500/20 cursor-pointer" />
                </div>

                <!-- Sección de Resultados -->
                <div class="grid grid-cols-3 gap-4 pt-4 border-t border-slate-200 text-center">
                    <div class="bg-blue-50 p-3 rounded-xl border border-blue-100">
                        <span class="block text-xs font-semibold text-blue-600 uppercase">Total</span>
                        <asp:Label ID="txtTotal" runat="server" CssClass="text-lg font-bold text-slate-800">-</asp:Label>
                    </div>
                    <div class="bg-indigo-50 p-3 rounded-xl border border-indigo-100">
                        <span class="block text-xs font-semibold text-indigo-600 uppercase">Hombres</span>
                        <asp:Label ID="txtH" runat="server" CssClass="text-lg font-bold text-slate-800">-</asp:Label>
                    </div>
                    <div class="bg-pink-50 p-3 rounded-xl border border-pink-100">
                        <span class="block text-xs font-semibold text-pink-600 uppercase">Mujeres</span>
                        <asp:Label ID="txtM" runat="server" CssClass="text-lg font-bold text-slate-800">-</asp:Label>
                    </div>
                </div>

                <!-- Etiqueta de Errores -->
                <div class="text-center pt-2">
                    <asp:Label ID="lblError" runat="server" ClientIDMode="AutoID" CssClass="text-sm font-medium text-rose-500 block"></asp:Label>
                </div>

            </div>

        </div>
    </form>
</body>
</html>