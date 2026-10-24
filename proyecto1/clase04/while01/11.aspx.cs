using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04.while01
{
    public partial class _11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = "";
                string resultadosHtml = "<ul class='space-y-2 text-sm text-slate-700'>";

                // Agrupamos los controles en arreglos para facilitar el recorrido
                TextBox[] txtPesos = { txtPeso1, txtPeso2, txtPeso3, txtPeso4, txtPeso5 };
                TextBox[] txtBasculas = { txtBasculas1, txtBasculas2, txtBasculas3, txtBasculas4, txtBasculas5 };

                // ---------------------------------------------------------
                // 1. CICLO FOR EXTERNO: Recorre a los 5 miembros del club
                // ---------------------------------------------------------
                for (int m = 0; m < 5; m++)
                {
                    int numeroMiembro = m + 1;

                    // Validar campos vacíos
                    if (string.IsNullOrWhiteSpace(txtPesos[m].Text) || string.IsNullOrWhiteSpace(txtBasculas[m].Text))
                    {
                        lblError.Text = $"Por favor complete todos los datos del Miembro {numeroMiembro}.";
                        return;
                    }

                    decimal pesoAnterior = decimal.Parse(txtPesos[m].Text);
                    string[] lecturas = txtBasculas[m].Text.Split(',');

                    if (lecturas.Length != 10)
                    {
                        lblError.Text = $"El Miembro {numeroMiembro} debe tener exactamente 10 valores en sus básculas.";
                        return;
                    }

                    // ---------------------------------------------------------
                    // 2. CICLO WHILE INTERNO: Suma las 10 básculas de cada miembro
                    // ---------------------------------------------------------
                    decimal sumaPesos = 0;
                    int i = 0;
                    while (i < 10)
                    {
                        sumaPesos += decimal.Parse(lecturas[i].Trim());
                        i++;
                    }

                    // Calcular promedio de las 10 básculas
                    decimal promedioPeso = sumaPesos / 10m;

                    // Calcular la diferencia respecto al peso anterior
                    decimal diferencia = promedioPeso - pesoAnterior;

                    string estadoMensaje = "";

                    // Aplicar las reglas del problema solicitadas
                    if (diferencia > 0)
                    {
                        estadoMensaje = $"<span class='font-bold text-red-600'>SUBIÓ</span> {Math.Round(diferencia, 2)} kg";
                    }
                    else if (diferencia < 0)
                    {
                        estadoMensaje = $"<span class='font-bold text-emerald-600'>BAJÓ</span> {Math.Round(Math.Abs(diferencia), 2)} kg";
                    }
                    else
                    {
                        estadoMensaje = "<span class='font-bold text-blue-600'>MANTUVO SU PESO</span> (0 kg)";
                    }

                    resultadosHtml += $"<li class='bg-white p-2.5 rounded-lg border border-blue-200 flex justify-between items-center'>" +
                                      $"<span><strong>Miembro {numeroMiembro}</strong> (Promedio: {Math.Round(promedioPeso, 2)} kg)</span>" +
                                      $"<span>{estadoMensaje}</span>" +
                                      $"</li>";
                }

                resultadosHtml += "</ul>";
                litResultados.Text = resultadosHtml;
            }
            catch (FormatException)
            {
                lblError.Text = "Por favor ingrese únicamente números válidos (use punto '.' para decimales).";
            }
            catch (Exception ex)
            {
                lblError.Text = "Ocurrió un error inesperado al procesar los datos.";
            }
        }
    }
}