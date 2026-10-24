using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04.while01
{
    public partial class ejercicio6__1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcularFor_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtCapital.Text))
                {
                    lblError.Text = "Por favor ingrese un capital inicial.";
                    return;
                }

                // Usamos decimal 'm' para cálculos monetarios precisos
                decimal capital = decimal.Parse(txtCapital.Text);

                if (capital <= 0)
                {
                    lblError.Text = "El capital debe ser mayor a cero.";
                    return;
                }

                // Ciclo FOR para los 12 meses del año
                for (int mes = 1; mes <= 12; mes++)
                {
                    // Se suma el 2% de interés (capital * 0.02) o se multiplica directo por 1.02
                    capital += capital * 0.02m;
                }

                lblError.Text = "";
                lblResultado.Text = capital.ToString("C"); // Muestra el formato de moneda ($)
            }
            catch (FormatException)
            {
                lblError.Text = "Por favor ingrese solo números válidos para el capital.";
            }
            catch (Exception ex)
            {
                lblError.Text = "Ocurrió un error inesperado.";
            }
        }

        protected void btnCalcularWhile_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtCapital.Text))
                {
                    lblError.Text = "Por favor ingrese un capital inicial.";
                    return;
                }

                decimal capital = decimal.Parse(txtCapital.Text);

                if (capital <= 0)
                {
                    lblError.Text = "El capital debe ser mayor a cero.";
                    return;
                }

                int mes = 1;
                // Ciclo WHILE para los 12 meses del año
                while (mes <= 12)
                {
                    capital += capital * 0.02m; // Reinversión del 2% mensual
                    mes++;
                }

                lblError.Text = "";
                lblResultado.Text = capital.ToString("C"); // Muestra el formato de moneda ($)
            }
            catch (FormatException)
            {
                lblError.Text = "Por favor ingrese solo números válidos para el capital.";
            }
            catch (Exception ex)
            {
                lblError.Text = "Ocurrió un error inesperado.";
            }
        }
    }
}