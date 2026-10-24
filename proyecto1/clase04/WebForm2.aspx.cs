using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            validacion.Text = "";
            resultado.Text = "";

            String[] entradas = txtTiempos.Text.Split(',');

            if(entradas.Length == 10)
            {
                int[] tiempos = new int[10];
                bool esValido = true;

                for ( int i = 0; i < 10; i++)
                {
                    if (int.TryParse(entradas[i].Trim(), out int tiempo))
                    {
                        tiempos[i] = tiempo;
                    }
                    else
                    {
                        esValido = false;
                        break;
                    }

                }

                    if (esValido)
                    {
                        // Validacion 1
                        bool mayorA16 = false;
                        int sumaTiempos = 0;

                        for (int i = 0; i < 10; i++)
                        {
                            sumaTiempos += tiempos[i];

                        if (tiempos[i] > 16)
                        {
                            mayorA16 = true;
                        }

                        //Validacion 2
                        double promedio = (double)sumaTiempos / 10;
                        bool promedioValido = (promedio <= 15);

                        string mensaje = "Resultados de la evaluación:<br/>";

                        if (mayorA16)
                        {
                            mensaje += "- Cumple: Hizo al menos un tiempo mayor a 16 minutos.<br/>";
                        }
                        else
                        {
                            mensaje += "- No cumple: Ningún tiempo fue mayor a 16 minutos.<br/>";
                        }

                        if (promedioValido)
                        {
                            mensaje += $"- Cumple: Su promedio es {promedio} (menor o igual a 15 minutos).";
                        }
                        else
                        {
                            mensaje += $"- No cumple: Su promedio es {promedio} (mayor a 15 minutos).";
                        }

                        resultado.Text = mensaje;
                    }

                }
                else
                {
                    validacion.Text = "Asegúrate de ingresar solo números enteros separados por comas.";
                }
            }
            else
            {
                validacion.Text = "Debe ingresar exactamente los 10 tiempos.";
            }
        }
    }
}