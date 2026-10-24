using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04.while01
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            validacion.Text = ""; 
            resultado.Text = "";



            if (int.TryParse(txtN.Text, out int n) && n > 0) 
            {
                string[] lineas = txtTiempos.Text.Split('\n');


                if(lineas.Length >= n)
                {
                    string reporte = "";
                    int i = 0;


                    while( i< n) 
                    {
                        string[] datosVendedor = lineas[i].Split(',');

                        if(datosVendedor.Length == 4)
                        {
                            if (double.TryParse(datosVendedor[0].Trim(), out double sueldoBase ) &&
                                double.TryParse(datosVendedor[1].Trim(), out double v1) &&
                                double.TryParse(datosVendedor[2].Trim(), out double v2) &&
                                double.TryParse(datosVendedor[3].Trim(), out double v3))
                            {
                                // Calcular total de las tres ventas
                                double totalVentas = v1 + v2 + v3;

                                // 10% extra por comisiones de sus ventas
                                double comision = totalVentas * 0.10;

                                // Sueldo total (sueldo base + comisiones)
                                double sueldoTotal = sueldoBase + comision;

                                // Agregar al reporte
                                reporte += $"Vendedor {i + 1} -> Comisión: ${comision:F2} | Total a pagar: ${sueldoTotal:F2}<br/>";
                            }
                        }
                        i++; // Incrementamos el contador del while
                    }
                    resultado.Text = reporte;
                }
                else
                {
                    validacion.Text = "Faltan datos por ingresar para algunos vendedores.";
                }
            }

            else
            {
                validacion.Text = "Ingrese un número válido de vendedores (n).";
            }
        }
    }
}