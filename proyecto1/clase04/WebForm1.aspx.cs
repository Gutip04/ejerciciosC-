using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            validacion.Text = "";
            resultado.Text = "";

            if (int.TryParse(txtN.Text, out int n ))
            {
                if (n >= 1 && n <= 100)
                {
                    string tablaTexto = "";

                    for( int i = 1; i <= 10; i++)
                    {
                        int producto = n * i;

                        tablaTexto += $"{n} X {i} = {producto}     \n";
                    }

                    resultado.Text = tablaTexto;
                }

                else 
                { 
                    validacion.Text = "Ingrese un número entre 1 y 100."; 
                }


            }
            else
            {
                validacion.Text = "Ingrese un número entero.";
            }
        }
    }
}