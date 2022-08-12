<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="IlkDeneme._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css"> 
        body{background-color:black}
        .auto-style3 {
            width: 322px;
        }
        .auto-style4 {
            width: 70px;
        }
        .auto-style6 {
            height: 26px;
            width: 322px;
        }
        .auto-style7 {
            width: 324px;
        }
        .auto-style8 {
            width: 321px;
        }
        .auto-style9 {
            width: 168px;
        }
        .auto-style13 {
            width: 94px;
        }
        .auto-style14 {
            width: 324px;
            height: 26px;
        }
        .auto-style15 {
            width: 168px;
            height: 26px;
        }
        .auto-style16 {
            width: 104px;
            height: 26px;
        }
        .auto-style17 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:10px; background-color:black;font-size:26px;text-align:center;color:darkred">Genel Bilgiler
        </div>
        <div style="background-color:black;border:solid;border-color:white">
            <table>
                <tr style="background-color:black;color:mediumpurple">
                    <td>T.C Kimlik No:</td>
                    
                    <td><asp:TextBox ID="TextBox1" runat="server" BackColor="Black" ForeColor="MediumPurple"></asp:TextBox></td>
                    <td>Kredi İstenen Miktar:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" BackColor="Black" ForeColor="Yellow"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Kayıt Oluştur" Width="107px" BackColor="Green" ForeColor="MediumPurple" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="padding:10px; background-color:black;font-size:26px;text-align:center;color:indianred">Ev Kredisi İçin Bilgiler</div>
        <div style="background-color:black;border:solid;border-color:white">
            <table>
                <tr style="background-color:black;color:mediumblue">
                    <td class="auto-style8">Ev Kaç Metrekare?</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" BackColor="Black" ForeColor="MediumBlue"></asp:TextBox></td>

                </tr>
                <tr style="background-color:black;color:mediumblue">
                    <td class="auto-style8">Ev Kaç Sene Önce Yapıldı?</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" BackColor="Black" ForeColor="MediumBlue"></asp:TextBox></td>
                </tr>
                <tr style="background-color:black;color:mediumblue">
                    <td class="auto-style8">Peşinat Verebilir Misiniz?</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Evet" BackColor="Black" ForeColor="MediumBlue" />
                    </td>
                    <td>

            <asp:Button ID="Button6" runat="server" Text="Ev Kredisini Görmek için Tıklayın" BackColor="Green" ForeColor="Yellow" OnClick="Button6_Click" />

                    </td>
                    <td>

            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>

                    </td>
                    

                </tr>
            </table>
        </div>
        <div style="padding:10px; background-color:black;font-size:26px;text-align:center;color:red">İhtiyaç Kredisi İçin Bilgiler</div>
        <div style="background-color:black;border:solid;border-color:white">
            <table>
                <tr style="background-color:black;color:mediumspringgreen">
                    <td class="auto-style3">Kefiliniz Var Mı?</td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Evet" BackColor="Black" ForeColor="MediumSpringGreen" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                 </tr>
                <tr style="background-color:black;color:mediumspringgreen">
                    <td class="auto-style6">Kaç Senedir Sİgortalı İşçisiniz?</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" BackColor="Black" ForeColor="MediumSpringGreen"></asp:TextBox>
                    </td>
                    <td>
            
            <asp:Button ID="Button7" runat="server" Text="İhtiyaç Kredisi İçin Tıklayın" BackColor="Green" ForeColor="Yellow" OnClick="Button7_Click" />
                    </td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    
                    
                        
                </tr>
                
                
            </table>
        </div>
        <div style="padding:10px; background-color:black;font-size:26px;text-align:center;color:palevioletred">Taşıt Kredisi İçin Bilgiler</div>
        <div style="background-color:black;border:solid;border-color:white">
            <table>
                <tr style="background-color:black;color:mediumvioletred">
                    <td class="auto-style14">İkinci El Araba Mı</td>
                    <td class="auto-style15">
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Evet" ForeColor="MediumVioletRed" />
                    </td>
                    <td class="auto-style16">

                        </td>

                </tr>
                <tr style="background-color:black;color:mediumvioletred">
                    <td class="auto-style7">İpotek İçin Verebilecek Bir Şey Var Mı?</td>
                    <td class="auto-style9">
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Evet" ForeColor="MediumVioletRed" />
                    </td>
                    <td>
            
            <asp:Button ID="Button8" runat="server" Text="Taşıt Kredisi İçin Tıklatın" BackColor="Green" ForeColor="Yellow" OnClick="Button8_Click" />
            
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="border:solid;border-color:white">
                <tr>
                    <td>

                        <asp:Label ID="Label1" runat="server" ForeColor="#CC66FF" Text="Taksitlendirme Kodunu Giriniz:"></asp:Label>
                        <asp:TextBox ID="TextBox9" runat="server" BackColor="Black" ForeColor="Yellow"></asp:TextBox>
                        <asp:Button ID="Button5" runat="server" BackColor="Green" ForeColor="#CC66FF" Text="Button" Width="112px" OnClick="Button5_Click1" />

                    </td>
                    
                    
                </tr>
                <tr>
                    <td class="auto-style17">

                        <asp:Label ID="Label2" runat="server" ForeColor="#CC66FF" Text="Çıkan Taksit Miktarı:"></asp:Label>
                        <asp:TextBox ID="TextBox10" runat="server" BackColor="Black" ForeColor="Yellow"></asp:TextBox>

                    </td>
                </tr>

            </table>
        </div>
        <div style="padding:10px; background-color:black;font-size:30px;text-align:center;color:yellow"></div>
        <div>
            
            <br />
            
        </div>

    </form>
</body>
</html>
