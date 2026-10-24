using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.clase04.while01
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtGenero0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void calcular_Click(object sender, EventArgs e)
        {
            try
            {


                string[] generos = txtGenero.Text.Split(',');

                int i = 0;
                int hombres = 0;
                int mujeres = 0;

                while (i < generos.Length)
                {
                    string g = generos[i].Trim();

                    if (g != "1" && g != "2")
                    {
                        throw new Exception("Ingrese solo 1 o 2 para los géneros.");
                    }
                   

                    if (g == "1")
                    {
                        hombres++;
                    }
                    else if (g == "2")
                    {
                        mujeres++;
                    }

                    i++;

                }

                lblError.Text = "";
                txtH.Text = hombres.ToString();
                txtM.Text = mujeres.ToString();
                txtTotal.Text = (hombres + mujeres).ToString();


            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
    }
}