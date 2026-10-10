using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.ejerciciosCondicionales
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double ingresos, costoCasa, enganche, parcial;

            ingresos = Convert.ToDouble(ingresos1.Text);
            costoCasa = Convert.ToDouble(casa.Text);

            if (ingresos < 8000)
            {
                enganche = costoCasa * (15.0 / 100);
                parcial = (costoCasa - enganche) / (10 * 12);
            }
            else
            {
                enganche = costoCasa * (30.0 / 100);
                parcial = (costoCasa - enganche) / (7 * 12);
            }

            enganche1.Text = enganche.ToString("N2");
            parcial1.Text = parcial.ToString("N2");
        }
    }
}