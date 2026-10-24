using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04.while01
{
    public partial class ejercicio4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                // Validar que el campo no esté vacío
                if (string.IsNullOrWhiteSpace(txtDigitos.Text))
                {
                    lblError.Text = "Por favor ingrese los dígitos de las placas.";
                    return;
                }

                // Separar los valores por comas
                string[] entradas = txtDigitos.Text.Split(',');

                int amarilla = 0;
                int rosa = 0;
                int roja = 0;
                int verde = 0;
                int azul = 0;
                int totalAutos = 0;

                int i = 0;
                while (i < entradas.Length)
                {
                    string item = entradas[i].Trim();

                    // Validar que cada elemento sea un dígito individual (0 al 9)
                    if (item.Length != 1 || !char.IsDigit(item[0]))
                    {
                        lblError.Text = $"'{item}' no es un dígito válido. Ingrese solo números de una sola cifra (0-9).";
                        return;
                    }

                    int digito = int.Parse(item);

                    // Aplicar las reglas de la calcomanía según la imagen
                    if (digito == 1 || digito == 2)
                    {
                        amarilla++;
                    }
                    else if (digito == 3 || digito == 4)
                    {
                        rosa++;
                    }
                    else if (digito == 5 || digito == 6)
                    {
                        roja++;
                    }
                    else if (digito == 7 || digito == 8)
                    {
                        verde++;
                    }
                    else if (digito == 9 || digito == 0)
                    {
                        azul++;
                    }

                    totalAutos++;
                    i++;
                }

                // Limpiar errores y mostrar resultados en pantalla
                lblError.Text = "";
                lblAmarilla.Text = amarilla.ToString();
                lblRosa.Text = rosa.ToString();
                lblRoja.Text = roja.ToString();
                lblVerde.Text = verde.ToString();
                lblAzul.Text = azul.ToString();
                lblTotal.Text = totalAutos.ToString();
            }
            catch (Exception ex)
            {
                lblError.Text = "Ocurrió un error inesperado al procesar los datos.";
            }
        }
    }
}