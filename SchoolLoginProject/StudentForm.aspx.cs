using SchoolLoginProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolLoginProject
{
    public partial class StudentForm : Page
    {
        private List<Student> Students
        {
            get
            {
                // ViewState'de öğrenci listesini tutar. Eğer daha önce liste yoksa yeni bir liste oluşturur.
                if (ViewState["Students"] == null)
                {
                    ViewState["Students"] = new List<Student>();
                }
                return (List<Student>)ViewState["Students"];
            }
            set
            {
                // ViewState'deki öğrenci listesini günceller.
                ViewState["Students"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Sayfa ilk yüklendiğinde öğrenci listesini görüntülemek için BindStudentGrid metodunu çağırır.
                BindStudentGrid();
            }
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            var students = Students;
            // Mevcut öğrenci listesini alır.

            students.Add(new Student()
            {
                Name = txtName.Text,
                Surname = txtSurname.Text,
                SchoolNumber = txtSchoolNumber.Text,
                Department = txtDepartment.Text,
                Email = txtEmail.Text,
                Password = txtPassword.Text,
                // Yeni öğrenci nesnesi oluşturur ve TextBox'lardan alınan değerleri atar.
            });

            Students = students;
            // Güncellenmiş öğrenci listesini ViewState'e geri atar.

            BindStudentGrid();
            // GridView'i günceller.

            // Verileri ekledikten sonra giriş alanlarını temizler.
            txtName.Text = "";
            txtSurname.Text = "";
            txtDepartment.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
        }

        private void BindStudentGrid()
        {
            gvStudentList.DataSource = Students;
            // Öğrenci listesini GridView'in veri kaynağı olarak atar.
            gvStudentList.DataBind();
            // GridView'i günceller ve verileri gösterir.
        }
    }
}
