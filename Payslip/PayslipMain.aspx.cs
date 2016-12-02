using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Payslip
{
    public partial class PayslipMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 2010; i < 2030; i++)
			{
                DropDownList2.Items.Add(i.ToString());
			}
            for (int i = 1; i < 32; i++)
			{
                DropDownList3.Items.Add(i.ToString());
			}
        }
        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            CookiesSettings();
        }
        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            CookiesSettings();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CookiesSettings();
            if (RadioButton7.Checked)
            {
                Response.Cookies["child1"].Value = Server.UrlEncode("Okula Gitmiyor");
                Response.Cookies["child1"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton8.Checked)
            {
                Response.Cookies["child1"].Value = Server.UrlEncode("İlköğretim");
                Response.Cookies["child1"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton9.Checked)
            {
                Response.Cookies["child1"].Value = Server.UrlEncode("Lise");
                Response.Cookies["child1"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton10.Checked)
            {
                Response.Cookies["child1"].Value = Server.UrlEncode("Üniversite");
                Response.Cookies["child1"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton11.Checked)
            {
                Response.Cookies["child1"].Value = Server.UrlEncode("Mezun");
                Response.Cookies["child1"].Expires = DateTime.Now.AddDays(1);
            }
            if (RadioButton12.Checked)
            {
                Response.Cookies["child2"].Value = Server.UrlEncode("Okula Gitmiyor");
                Response.Cookies["child2"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton13.Checked)
            {
                Response.Cookies["child2"].Value = Server.UrlEncode("İlköğretim");
                Response.Cookies["child2"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton14.Checked)
            {
                Response.Cookies["child2"].Value = Server.UrlEncode("Lise");
                Response.Cookies["child2"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton15.Checked)
            {
                Response.Cookies["child2"].Value = Server.UrlEncode("Üniversite");
                Response.Cookies["child2"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton16.Checked)
            {
                Response.Cookies["child2"].Value = Server.UrlEncode("Mezun");
                Response.Cookies["child2"].Expires = DateTime.Now.AddDays(1);
            }
            Response.Redirect("PayslipControl.aspx");
        }
        private void CookiesSettings()
        {
            Response.Cookies["name"].Value = Server.UrlEncode(TextBox1.Text);
            Response.Cookies["name"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["surname"].Value = Server.UrlEncode(TextBox2.Text);
            Response.Cookies["surname"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["job"].Value = Server.UrlEncode(ListBox1.Text);
            Response.Cookies["job"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["month"].Value = Server.UrlEncode(DropDownList1.Text);
            Response.Cookies["month"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["year"].Value = Server.UrlEncode(DropDownList2.Text);
            Response.Cookies["year"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["businessday"].Value = Server.UrlEncode(DropDownList3.Text);
            Response.Cookies["businessday"].Expires = DateTime.Now.AddDays(1);
            Response.Cookies["interruptioninsurance"].Value = Server.UrlEncode(TextBox5.Text);
            Response.Cookies["interruptioninsurance"].Expires = DateTime.Now.AddDays(1);
            if (RadioButton1.Checked)
            {
                Response.Cookies["maritalstatus"].Value = Server.UrlEncode("Bekar");
                Response.Cookies["maritalstatus"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton2.Checked)
            {
                Response.Cookies["maritalstatus"].Value = Server.UrlEncode("Evli, Eşi Çalışmıyor");
                Response.Cookies["maritalstatus"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton3.Checked)
            {
                Response.Cookies["maritalstatus"].Value = Server.UrlEncode("Evli, Eşi Çalışıyor");
                Response.Cookies["maritalstatus"].Expires = DateTime.Now.AddDays(1);
            }
            if (CheckBox1.Checked)
            {
                Response.Cookies["road"].Value = Server.UrlEncode("Var");
                Response.Cookies["road"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["road"].Value = Server.UrlEncode("Yok");
                Response.Cookies["road"].Expires = DateTime.Now.AddDays(1);
            }
            if (CheckBox2.Checked)
            {
                Response.Cookies["dining"].Value = Server.UrlEncode("Var");
                Response.Cookies["dining"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["dining"].Value = Server.UrlEncode("Yok");
                Response.Cookies["dining"].Expires = DateTime.Now.AddDays(1);
            }
            if (CheckBox3.Checked)
            {
                Response.Cookies["injury"].Value = Server.UrlEncode("Var");
                Response.Cookies["injury"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                Response.Cookies["injury"].Value = Server.UrlEncode("Yok");
                Response.Cookies["injury"].Expires = DateTime.Now.AddDays(1);
            }
            if (RadioButton4.Checked)
            {
                Response.Cookies["namburofchildren"].Value = Server.UrlEncode("Çocuksuz");
                Response.Cookies["namburofchildren"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton5.Checked)
            {
                Response.Cookies["namburofchildren"].Value = Server.UrlEncode("1 Çocuk");
                Response.Cookies["namburofchildren"].Expires = DateTime.Now.AddDays(1);
            }
            else if (RadioButton6.Checked)
            {
                Response.Cookies["namburofchildren"].Value = Server.UrlEncode("2 Veya Daha Fazla");
                Response.Cookies["namburofchildren"].Expires = DateTime.Now.AddDays(1);
            }
        }
    }
}