using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.ejerciciosCondicionales
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calcular_Click(object sender, EventArgs e)
        {
            int cantidad;
            double total;

            cantidad = Convert.ToInt32(monto.Text);
            if (cantidad < 50000){
                total = (cantidad * 3) / 100;
                total1.Text = total.ToString();
            }
            else {
                total = (cantidad * 2) / 100;
                total1.Text = total.ToString();
            }
        }
    }
}