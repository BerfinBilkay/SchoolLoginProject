<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="SchoolLoginProject.StudentForm" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--İlk Satır için; Sayfa meta verileri belirtiliyor. Sayfa C# dilini kullanacak ve "Site.Master" adlı master page'i kullanacak. -->

    <!-- Bu sayfanın master page'deki MainContent alanı yerine geçecek olan içeriğini belirtir. -->

    <main>
        <div class="main-container d-flex">
            <!-- Ana kapsayıcı, flex özelliği ile iki alana bölünmüş. -->

            <div class="add-container flex-grow-1">
                <!-- Öğrenci ekleme formunun bulunduğu bölüm, alanın esnemesini sağlar. -->

                <asp:Panel ID="pnlAddStudent" runat="server" Visible="true">
                    <!-- Panel kontrolü, içerisinde öğrenci ekleme formu bulunuyor. -->

                    <h2>Add Student</h2>
                    <!-- Öğrenci ekleme bölümünü başlık olarak belirtir. -->

                    <div class="form-group">
                        <label>Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        <!-- Öğrencinin adını girmek için TextBox. -->
                    </div>
                    <div class="form-group">
                        <label>Surname:</label>
                        <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
                        <!-- Öğrencinin soyadını girmek için TextBox. -->
                    </div>
                    <div class="form-group">
                        <label>School Number:</label>
                        <asp:TextBox ID="txtSchoolNumber" runat="server" CssClass="form-control"></asp:TextBox>
                        <!-- Öğrencinin okul numarasını girmek için TextBox. -->
                    </div>
                    <div class="form-group">
                        <label>Department:</label>
                        <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control"></asp:TextBox>
                        <!-- Öğrencinin bölümünü girmek için TextBox. -->
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <!-- Öğrencinin e-posta adresini girmek için TextBox. -->
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <!-- Öğrencinin şifresini girmek için TextBox. TextMode 'Password' olarak ayarlanarak girilen karakterler gizlenir. -->
                    </div>
                    <br />
                    <asp:LinkButton ID="btnAddStudent" runat="server" CssClass="btn btn-primary" OnClick="btnAddStudent_Click">
                      <!-- Öğrenci eklemek için kullanılan LinkButton. Tıklama olayı btnAddStudent_Click metoduna bağlı. -->
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-floppy2" viewBox="0 0 16 16">
                          <!-- SVG ikonu, butonun içerisinde kaydet simgesi olarak kullanılmış. -->
                          <path d="M1.5 0h11.586a1.5 1.5 0 0 1 1.06.44l1.415 1.414A1.5 1.5 0 0 1 16 2.914V14.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 14.5v-13A1.5 1.5 0 0 1 1.5 0M1 1.5v13a.5.5 0 0 0 .5.5H2v-4.5A1.5 1.5 0 0 1 3.5 9h9a1.5 1.5 0 0 1 1.5 1.5V15h.5a.5.5 0 0 0 .5-.5V2.914a.5.5 0 0 0-.146-.353l-1.415-1.415A.5.5 0 0 0 13.086 1H13v3.5A1.5 1.5 0 0 1 11.5 6h-7A1.5 1.5 0 0 1 3 4.5V1H1.5a.5.5 0 0 0-.5.5m9.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5z"/>
                      </svg>    
                      Save
                    </asp:LinkButton>
                </asp:Panel>
            </div>
            <div class="gridview-container flex-grow-1">
                <!-- Öğrenci listesini gösteren GridView kapsayıcısı. -->

                <asp:UpdatePanel ID="upStudentList" runat="server">
                    <ContentTemplate>
                        <!-- GridView'i güncellemek için kullanılan UpdatePanel, sayfa yenilenmeden veriler güncellenebilir. -->
                        <!-- Öğrenci listesinin görüntülendiği GridView, otomatik sütun oluşturma kapalı ve belirli bir stil kullanılmış. -->
                                                        <!-- sütunlar -->
                        <asp:GridView ID="gvStudentList" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                                <asp:BoundField DataField="SchoolNumber" HeaderText="SchoolNumber" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                                <asp:BoundField DataField="Department" HeaderText="Department" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                                <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                                <asp:BoundField DataField="Password" HeaderText="Password" HeaderStyle-CssClass="table-header" ItemStyle-CssClass="table-cell" />
                            </Columns>
                            <HeaderStyle CssClass="thead-dark" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </main>
</asp:Content>
