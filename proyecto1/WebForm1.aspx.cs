using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyecto1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Btnsumar_Click(object sender, EventArgs e)
        {
            // se inicializa las variables
            int num1, num2, resultado;
            // datos de entrada
            num1 = Convert.ToInt32(Txtnum1.Text);
            num2 = Convert.ToInt32(Txtnum2.Text);
            //procedimiento
            resultado = num1 + num2;
            // salida
            Lblresultado1.Text = resultado.ToString();





        }
    }
}