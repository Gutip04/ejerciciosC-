using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.ejerciciosCondicionales
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double totalMaterias, promedio, costoMateria, impuesto, descuento, total;

            totalMaterias = Convert.ToDouble(totalMaterias1.Text);
            promedio = Convert.ToDouble(promedio1.Text);

            costoMateria = 100;

            if(promedio > 9)
            {
                total = totalMaterias * costoMateria;
                descuento = total * (30.0 / 100);
                total1.Text = (total-descuento).ToString();
            }
            else
            {
                total = totalMaterias * costoMateria;
                impuesto = total * (10.0 / 100);
                total1.Text = (total+impuesto).ToString();
            }

        }
    }
}