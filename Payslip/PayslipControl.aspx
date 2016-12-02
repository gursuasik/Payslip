<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayslipControl.aspx.cs" Inherits="Payslip.PayslipControl" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
    <div class="body">
		<div class="register">
			<div>
				<div>
					<div class="register">
                        <form></form>
						<form id="Form2" runat="server">
							<div>
                                <table align="center">
                                    <tr>
                                        <td colspan="4"><center><label><% Response.Write(Server.UrlDecode(Request.Cookies["year"].Value) + " Yılı " + Server.UrlDecode(Request.Cookies["month"].Value)); %> Ayı Bodro Bilgileri Kontrol Sayfası</label></center></td>
                                    </tr>
                                    <tr>
                                        <td width="100"><label>Adı</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["name"].Value)); %></label></td>
                                        <td width="100"><label>Soyadı</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["surname"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>Meslek</td>
                                        <td colspan="3"><label><% Response.Write(Server.UrlDecode(Request.Cookies["job"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>Ay</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["month"].Value)); %></label></td>
                                        <td><label>Yıl</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["year"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>İş Günü</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["businessday"].Value)); %></label></td>
                                        <td><label>Sigorta Kesintisi</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["interruptioninsurance"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>Medeni Hali</td>
                                        <td><label><% Response.Write(Server.UrlDecode(Request.Cookies["maritalstatus"].Value)); %></label></td>
                                        <td>
                                            <label>Yol</label>
                                            <br />
                                            <label>Yemek</label>
                                            <br />
                                            <label>Sakatlık</label>
                                        </td>
                                        <td>
                                            <label><% Response.Write(Server.UrlDecode(Request.Cookies["road"].Value)); %></label>
                                            <br />
                                            <label><% Response.Write(Server.UrlDecode(Request.Cookies["dining"].Value)); %></label>
                                            <br />
                                            <label><% Response.Write(Server.UrlDecode(Request.Cookies["injury"].Value)); %></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>Çocuk Sayısı</label></td>
                                        <td colspan="3"><label><% Response.Write(Server.UrlDecode(Request.Cookies["namburofchildren"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>1. Çocuğun Eğitimi</td>
                                        <td colspan="3"><label><% Response.Write(Server.UrlDecode(Request.Cookies["child1"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>2. Çocuğun Eğitimi</td>
                                        <td colspan="3"><label><% Response.Write(Server.UrlDecode(Request.Cookies["child2"].Value)); %></label></td>
                                    </tr>
                                    <tr>
                                        <td><label>Aylık Maaş</label></td>
                                        <td colspan="3">
                                            <label><%
                                                int price = 0;
                                                if (Server.UrlDecode(Request.Cookies["job"].Value)=="Bilgisayar Mühendisi")
                                                {
                                                    price = 105;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["job"].Value)=="Bilgisayar Yazılım Mühendisi")
                                                {
                                                    price = 100;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["job"].Value) == "Bilgisayar Donanım Mühendisi")
                                                {
                                                    price = 90;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["job"].Value) == "Bilgisayar Yazılım Geliştirme Mühendisi")
                                                {
                                                    price = 95;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["job"].Value) == "Oyun Geliştirme Mühendisi")
                                                {
                                                    price = 80;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["job"].Value) == "Bilgisayar Teknisyeni")
                                                {
                                                    price = 60;
                                                }
                                                price = price*Convert.ToInt16(Server.UrlDecode(Request.Cookies["businessday"].Value)) - Convert.ToInt16(Server.UrlDecode(Request.Cookies["interruptioninsurance"].Value));
                                                if (Server.UrlDecode(Request.Cookies["road"].Value)=="Var")
                                                {
                                                    price += 30;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["dining"].Value) == "Var")
                                                {
                                                    price += 30;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["injury"].Value) == "Var")
                                                {
                                                    price += 30;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["child1"].Value) == "Var")
                                                {
                                                    price += 30;
                                                }
                                                if (Server.UrlDecode(Request.Cookies["child2"].Value) == "Var")
                                                {
                                                    price += 60;
                                                }
                                                Response.Write(price.ToString());
                                            %></label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><center><asp:Button ID="Button1" runat="server" Text="Tamam" /></center></td>
                                    </tr>
                                </table>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
