using QLNT_CaoSu.DAO;
using QLNT_CaoSu.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLNT_CaoSu
{
    public partial class fManager : Form
    {
        private Account loginAccount;

        public Account LoginAccount { get => loginAccount; set { loginAccount = value; ChangeAccount(loginAccount.Type);} }

        public fManager(Account acc)
        {
            InitializeComponent();
            this.LoginAccount = acc;

            LoadTable();
        }
        #region Method

        void ChangeAccount(int type)
        {
            adminToolStripMenuItem.Enabled = type == 1;
            thôngTinTàiKhoảnToolStripMenuItem.Text += " (" + LoginAccount.DisplayName + ")";
        }

        void LoadTable()
        {
            List<Table> tableList = TableDAO.Instance.LoadTableList();

            foreach (Table item in tableList)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text ="ID = " + item.ID +Environment.NewLine + item.Name + Environment.NewLine + item.SoLuongCay + " Cây";

                switch (item.ID %2)
                {
                    case 0:
                        btn.BackColor = Color.LightBlue;
                        break;
                    default:
                        btn.BackColor = Color.LightGreen;
                        break;
                }

                flpManager.Controls.Add(btn);
            }
        }

        #endregion

        #region Event
        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAdmin fad = new fAdmin();
            fad.ShowDialog();
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tàiKhoảnCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fAccountProfile facc = new fAccountProfile(LoginAccount);
            facc.UpdateAccount += facc_UpdateAccount;
            facc.ShowDialog();
        }

        void facc_UpdateAccount(object sender, AccountEvent e)
        {
            thôngTinTàiKhoảnToolStripMenuItem.Text = "Thông tin tài khoản (" + e.Acc.DisplayName + ")";
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {

        }
        #endregion
    }
}
