using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjeSiniflari;

namespace IlkDeneme
{
    public partial class _default : System.Web.UI.Page
    {
        double Faiz = 0;
        Kayit yeniKayit = new Kayit();
        Ev yeniEv = new Ev();
        Ihtiyac yeniIhtiyac = new Ihtiyac();
        static double denek;
        Tasit yeniTasit = new Tasit();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            yeniKayit.TcKimlik = TextBox1.Text;
            yeniKayit.KrediİstenenMiktar = (int.Parse(TextBox2.Text));
            denek = yeniKayit.KrediİstenenMiktar;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            yeniEv.MetreKare = (int.Parse(TextBox3.Text));
            yeniEv.Sene = (int.Parse(TextBox4.Text));
            yeniEv.Pesin = CheckBox1.Checked;
            var text= Ev(yeniEv.MetreKare, yeniEv.Sene, yeniEv.Pesin);
            TextBox11.Text = Convert.ToString(text);
            

        }
        public double Ev(int MetreKare,int Sene, bool Pesin)
        {
            Faiz = 0;
            if (MetreKare > 0 && MetreKare < 50) Faiz += 0.21;
            else if (MetreKare >= 50 && MetreKare < 90) Faiz += 0.23;
            else if (MetreKare <= 90 && MetreKare > 130) Faiz += 0.25;
            if (Sene > 0 && Sene <5) Faiz += 0.18;
            else if (Sene >= 5 && Sene < 10) Faiz += 0.22;
            else if (Sene >= 10 && Sene > 15) Faiz += 0.26;
            else if (Sene > 15) Faiz += 0.30;
            if (Pesin == true) Faiz -= 0.09;
            else Faiz += 0.09;
            return denek + (denek * Faiz);
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            yeniIhtiyac.Kefil = CheckBox2.Checked;
            yeniIhtiyac.Sigorta = (int.Parse(TextBox6.Text));
            var text1 = Ihtiyac(yeniIhtiyac.Sigorta, yeniIhtiyac.Kefil);
            TextBox5.Text = Convert.ToString(text1);
        }
        public double Ihtiyac(int Sigorta,bool Kefil)
        {
            Faiz = 0;
            if (Sigorta > 0 && Sigorta <= 5) Faiz += 1.1;
            else if (Sigorta > 5 && Sigorta <= 10) Faiz += 0.89;
            else Faiz += 0.79;
            if (Kefil == true) Faiz -= 0.09;
            else Faiz += 0.4;
            return denek + (denek * Faiz);

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            yeniTasit.IkinciEl = CheckBox4.Checked;
            yeniTasit.Ipotek = CheckBox6.Checked;
            var text2 = Tasit(yeniTasit.IkinciEl, yeniTasit.Ipotek);
            TextBox12.Text = Convert.ToString(text2);
        }
        public double Tasit(bool IkinciEl, bool Ipotek)
        {
            Faiz = 0;
            if (IkinciEl == true) Faiz += 0.99;
            else Faiz += 0.78;
            if (Ipotek == true) Faiz -= 0.12;
            else Faiz += 0.98;
            return denek + (denek * Faiz);
        }
        protected void Button5_Click1(object sender, EventArgs e)
        {
           
            if (TextBox9.Text == "nur")
            {
                TextBox10.Text = "12 taksit";
            }
            else TextBox10.Text = "taksit yok";

        }
    }
}
