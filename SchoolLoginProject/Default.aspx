<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SchoolLoginProject._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- İlk satırda; Sayfa başlığı, kullanılan dil, master page dosyası, otomatik olay bağlama, arka plan kodu ve bu sayfanın hangi sınıftan türediği belirtilmiş. -->

    <!-- Bu sayfanın, master sayfadaki MainContent adlı ContentPlaceHolder yerine geçecek olan kısmını belirtiyor. -->

    <main style="display: flex; justify-content: center; align-items: center;">
        <!-- Ana içerik alanını yatay ve dikey merkezleyecek şekilde düzenler. -->
        
        <div style="width: 50%; background-color: azure; padding: 15px; display: flex; justify-content: center; align-items: center; border-radius: 15px;">
            <!-- İçerik kapsayıcısının genişliğini %50 yapar, arka plan rengini azure olarak ayarlar ve içeriği merkezler. Kenarların köşelerini yuvarlatır. -->
            
            <form id="form1">
                <!-- Kullanıcı giriş bilgilerini almak için kullanılan form. -->
                
                <div class="login-container">
                    <!-- Giriş formunu kapsayan ana kapsayıcı. -->
                    
                    <img src="Images/logo.png" width="200" height="200" />
                    <!-- Logo gösterimi, belirtilen genişlik ve yükseklik değerleriyle. -->
                    
                    <asp:Panel ID="pnlLogin" runat="server">
                        <!-- Giriş formu bileşenlerini içerir ve sunucu tarafında çalışan bir ASP.NET paneli. -->
                        
                        <div class="form-group">
                            <label class="form-label">E-Mail</label>
                            <!-- Kullanıcı adını belirtmek için kullanılan etiket. -->
                            
                            <asp:TextBox Width="100%" ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            <!-- Kullanıcı adını almak için kullanılan TextBox kontrolü. Genişliği %100 olarak ayarlanmış ve stil olarak form-control CSS sınıfı atanmış. -->
                        </div>

                        <div class="form-group">
                            <label for="txtPassword">Password:</label>
                            <!-- Şifre alanını belirtmek için kullanılan etiket. -->
                            
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <!-- Şifreyi almak için kullanılan TextBox kontrolü. TextMode 'Password' olarak ayarlanarak girilen karakterlerin gizlenmesi sağlanmış. -->
                        </div>
                        <br />
                        
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-dark" Text="Login" OnClick="btnLogin_Click" />
                        <!-- Giriş butonu. Tıklanıldığında btnLogin_Click metodu çağırılır. CSS sınıfı olarak btn ve btn-dark kullanılmış. -->
                    </asp:Panel>
                </div>
            </form>
        </div>
    </main>
</asp:Content>