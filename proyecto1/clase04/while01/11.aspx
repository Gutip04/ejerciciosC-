<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11.aspx.cs" Inherits="proyecto1.clase04.while01._11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control de Peso - Club contra la Obesidad</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-100 min-h-screen flex items-center justify-center p-4">
    <form id="form1" runat="server" class="w-full max-w-4xl">
        <div class="bg-white shadow-xl rounded-2xl p-8 border border-slate-100">
            
            <h2 class="text-2xl font-bold text-slate-800 mb-2 text-center">Club contra la Obesidad</h2>
            <p class="text-sm text-slate-500 mb-6 text-center">Ingrese el peso anterior y los 10 pesajes (separados por comas) para cada uno de los 5 miembros.</p>

            <div class="space-y-6">
                
                <!-- Contenedor de los 5 miembros -->
                <div class="space-y-4">
                    <%-- Miembro 1 --%>
                    <div class="grid grid-cols-1 md:grid-cols-12 gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200 items-center">
                        <div class="md:col-span-2 font-semibold text-slate-700">Miembro 1</div>
                        <div class="md:col-span-4">
                            <label class="block text-xs text-slate-500 mb-1">Peso Anterior (kg)</label>
                            <asp:TextBox ID="txtPeso1" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 75.5"></asp:TextBox>
                        </div>
                        <div class="md:col-span-6">
                            <label class="block text-xs text-slate-500 mb-1">10 Pesajes (separados por comas)</label>
                            <asp:TextBox ID="txtBasculas1" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 74, 74.2, ..."></asp:TextBox>
                        </div>
                    </div>

                    <%-- Miembro 2 --%>
                    <div class="grid grid-cols-1 md:grid-cols-12 gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200 items-center">
                        <div class="md:col-span-2 font-semibold text-slate-700">Miembro 2</div>
                        <div class="md:col-span-4">
                            <label class="block text-xs text-slate-500 mb-1">Peso Anterior (kg)</label>
                            <asp:TextBox ID="txtPeso2" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 80"></asp:TextBox>
                        </div>
                        <div class="md:col-span-6">
                            <label class="block text-xs text-slate-500 mb-1">10 Pesajes (separados por comas)</label>
                            <asp:TextBox ID="txtBasculas2" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 79, 79.5, ..."></asp:TextBox>
                        </div>
                    </div>

                    <%-- Miembro 3 --%>
                    <div class="grid grid-cols-1 md:grid-cols-12 gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200 items-center">
                        <div class="md:col-span-2 font-semibold text-slate-700">Miembro 3</div>
                        <div class="md:col-span-4">
                            <label class="block text-xs text-slate-500 mb-1">Peso Anterior (kg)</label>
                            <asp:TextBox ID="txtPeso3" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 68"></asp:TextBox>
                        </div>
                        <div class="md:col-span-6">
                            <label class="block text-xs text-slate-500 mb-1">10 Pesajes (separados por comas)</label>
                            <asp:TextBox ID="txtBasculas3" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 67.5, 68, ..."></asp:TextBox>
                        </div>
                    </div>

                    <%-- Miembro 4 --%>
                    <div class="grid grid-cols-1 md:grid-cols-12 gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200 items-center">
                        <div class="md:col-span-2 font-semibold text-slate-700">Miembro 4</div>
                        <div class="md:col-span-4">
                            <label class="block text-xs text-slate-500 mb-1">Peso Anterior (kg)</label>
                            <asp:TextBox ID="txtPeso4" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 90"></asp:TextBox>
                        </div>
                        <div class="md:col-span-6">
                            <label class="block text-xs text-slate-500 mb-1">10 Pesajes (separados por comas)</label>
                            <asp:TextBox ID="txtBasculas4" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 89, 89.5, ..."></asp:TextBox>
                        </div>
                    </div>

                    <%-- Miembro 5 --%>
                    <div class="grid grid-cols-1 md:grid-cols-12 gap-3 bg-slate-50 p-4 rounded-xl border border-slate-200 items-center">
                        <div class="md:col-span-2 font-semibold text-slate-700">Miembro 5</div>
                        <div class="md:col-span-4">
                            <label class="block text-xs text-slate-500 mb-1">Peso Anterior (kg)</label>
                            <asp:TextBox ID="txtPeso5" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 72"></asp:TextBox>
                        </div>
                        <div class="md:col-span-6">
                            <label class="block text-xs text-slate-500 mb-1">10 Pesajes (separados por comas)</label>
                            <asp:TextBox ID="txtBasculas5" runat="server" CssClass="w-full border border-slate-300 rounded-lg px-3 py-1.5 text-sm bg-white" placeholder="Ej: 71, 71.5, ..."></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Botón Calcular -->
                <div class="text-center pt-2">
                    <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Procesar Ritual de Pesaje" CssClass="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-xl transition duration-200 shadow-md shadow-blue-500/20 cursor-pointer" />
                </div>

                <!-- Resultados -->
                <div class="bg-blue-50 p-5 rounded-xl border border-blue-100 mt-4">
                    <h3 class="text-sm font-bold text-blue-800 uppercase mb-3">Resultados del Ritual:</h3>
                    <asp:Literal ID="litResultados" runat="server"></asp:Literal>
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