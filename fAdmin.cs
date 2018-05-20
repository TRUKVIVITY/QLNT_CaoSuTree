using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using QLNT_CaoSu.DAO;

namespace QLNT_CaoSu
{
    public partial class fAdmin : Form
    {
        public fAdmin()
        {
            InitializeComponent();

            LoadAccountList(); //use void LoadAccountList();
        }

        void LoadAccountList()
        {
            string query = "EXEC dbo.USP_GetAccountByUserName @userName";

            dtgvTaiKhoan.DataSource = DataProvider.Instance.ExecuteQuery(query, new object[] { "Rumi","staff" });

        }
    }
}
