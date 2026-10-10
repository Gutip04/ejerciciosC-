using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1.ejercicios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            float monto, dolar, total;

            monto = Convert.ToInt32(capital1.Text);
            
            dolar = Convert.ToInt32(dolar1.Text);
            total = (float)(monto / dolar);

            Lbl3.Text = total.ToString();
        }
    }
}