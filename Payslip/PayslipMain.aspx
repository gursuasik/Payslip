<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayslipMain.aspx.cs" Inherits="Payslip.PayslipMain" %>
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
						<h2>BODRO BİLGİLERİ</h2>
                        <form></form>
						<form id="Form2" runat="server">
							<div>
                                <table align="center">
                                    <tr>
                                        <td width="100"><label>Adı</label></td>
                                        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                        <td width="100"><label>Soyadı</label></td>
                                        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td><label>Meslek</label></td>
                                        <td colspan="3">
                                            <asp:ListBox ID="ListBox1" runat="server" Width="425px" Height="88px">
                                                <asp:ListItem>Bilgisayar Mühendisi</asp:ListItem>
                                                <asp:ListItem>Bilgisayar Yazılım Mühendisi</asp:ListItem>
                                                <asp:ListItem>Bilgisayar Donanım Mühendisi</asp:ListItem>
                                                <asp:ListItem>Bilgisayar Yazılım Geliştirme Mühendisi</asp:ListItem>
                                                <asp:ListItem>Oyun Geliştirme Mühendisi</asp:ListItem>
                                                <asp:ListItem>Bilgisayar Teknisyeni</asp:ListItem>
                                            </asp:ListBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>Ay</label></td>
                                        <td>                        
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Ocak</asp:ListItem>
                                                <asp:ListItem>Şubat</asp:ListItem>
                                                <asp:ListItem>Mart</asp:ListItem>
                                                <asp:ListItem>Nisan</asp:ListItem>
                                                <asp:ListItem>Mayıs</asp:ListItem>
                                                <asp:ListItem>Haziran</asp:ListItem>
                                                <asp:ListItem>Temmuz</asp:ListItem>
                                                <asp:ListItem>Ağustos</asp:ListItem>
                                                <asp:ListItem>Eylül</asp:ListItem>
                                                <asp:ListItem>Ekim</asp:ListItem>
                                                <asp:ListItem>Kasım</asp:ListItem>
                                                <asp:ListItem>Aralık</asp:ListItem>
                                            </asp:DropDownList>
                                        <td><label>Yıl</label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>İş Günü</label></td>
                                        <td><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
                                        <td><label>Sigorta Kesintisi</label></td>
                                        <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td><label>Medeni Hali</label></td>
                                        <td>
                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="MaritalStatus" Text="Bekar"/>
                                            <br />
                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="MaritalStatus" Text="Evli, Eşi Çalışmıyor"/>
                                            <br />
                                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="MaritalStatus" Text="Evli, Eşi Çalışıyor"/>
                                        </td>
                                        <td>
                                            <label>Yol</label>
                                            <br />
                                            <label>Yemek</label>
                                            <br />
                                            <label>Sakatlık</label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Var"/>
                                            <br />
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Var"/>
                                            <br />
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Var"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>Çocuk Sayısı</label></td>
                                        <td colspan="3">                        
                                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Child" Text="Çocuksuz"/>
                                            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Child" Text="1 Çocuk" OnCheckedChanged="RadioButton5_CheckedChanged"/>
                                            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Child" Text="2 Veya Daha Fazla" OnCheckedChanged="RadioButton6_CheckedChanged"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>1. Çocuğun Eğitimi</label></td>
                                        <td colspan="3">
                                            <asp:RadioButton ID="RadioButton7" runat="server" GroupName="ChildEducation1" Text="Okula Gitmiyor"/>
                                            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="ChildEducation1" Text="İlköğretim"/>
                                            <asp:RadioButton ID="RadioButton9" runat="server" GroupName="ChildEducation1" Text="Lise"/>
                                            <asp:RadioButton ID="RadioButton10" runat="server" GroupName="ChildEducation1" Text="Üniversite"/>
                                            <asp:RadioButton ID="RadioButton11" runat="server" GroupName="ChildEducation1" Text="Mezun"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label>2. Çocuğun Eğitimi</label></td>
                                        <td colspan="3">
                                            <asp:RadioButton ID="RadioButton12" runat="server" GroupName="ChildEducation2" Text="Okula Gitmiyor"/>
                                            <asp:RadioButton ID="RadioButton13" runat="server" GroupName="ChildEducation2" Text="İlköğretim"/>
                                            <asp:RadioButton ID="RadioButton14" runat="server" GroupName="ChildEducation2" Text="Lise"/>
                                            <asp:RadioButton ID="RadioButton15" runat="server" GroupName="ChildEducation2" Text="Üniversite"/>
                                            <asp:RadioButton ID="RadioButton16" runat="server" GroupName="ChildEducation2" Text="Mezun"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><center><asp:Button ID="Button1" runat="server" Text="Devam Et" OnClick="Button1_Click" /></center></td>
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
