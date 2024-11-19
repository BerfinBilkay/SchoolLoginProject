using SchoolLoginProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolLoginProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa her yüklendiğinde çalışan metod. Şu an boş, yani herhangi bir işlem yapılmıyor.
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = txtUsername.Text;
            string password = txtPassword.Text;
            // Kullanıcı adı ve şifreyi TextBox'lardan alır.

            if (userName == "berfin" && password == "berfin541")
            {
                // Kullanıcı adı ve şifre doğruysa.
                Response.Redirect("StudentForm.aspx");
                // Kullanıcıyı StudentForm.aspx sayfasına yönlendirir.
            }
        }
    }
}
