namespace QLNT_CaoSu
{
    partial class fManager
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.adminToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.thôngTinTàiKhoảnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tàiKhoảnCáNhânToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.logoutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel3 = new System.Windows.Forms.Panel();
            this.txbMaPhanKhu = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txbTenPhanKhu = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.txbMaCongNhan = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.txbTenCongNhan = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txbDateTime = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel6 = new System.Windows.Forms.Panel();
            this.txbKhoiLuong = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.dtgvSanLuong = new System.Windows.Forms.DataGridView();
            this.flpManager = new System.Windows.Forms.FlowLayoutPanel();
            this.menuStrip1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvSanLuong)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.adminToolStripMenuItem,
            this.thôngTinTàiKhoảnToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(795, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // adminToolStripMenuItem
            // 
            this.adminToolStripMenuItem.Name = "adminToolStripMenuItem";
            this.adminToolStripMenuItem.Size = new System.Drawing.Size(55, 20);
            this.adminToolStripMenuItem.Text = "Admin";
            this.adminToolStripMenuItem.Click += new System.EventHandler(this.adminToolStripMenuItem_Click);
            // 
            // thôngTinTàiKhoảnToolStripMenuItem
            // 
            this.thôngTinTàiKhoảnToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tàiKhoảnCáNhânToolStripMenuItem,
            this.logoutToolStripMenuItem});
            this.thôngTinTàiKhoảnToolStripMenuItem.Name = "thôngTinTàiKhoảnToolStripMenuItem";
            this.thôngTinTàiKhoảnToolStripMenuItem.Size = new System.Drawing.Size(123, 20);
            this.thôngTinTàiKhoảnToolStripMenuItem.Text = "Thông tin tài khoản";
            // 
            // tàiKhoảnCáNhânToolStripMenuItem
            // 
            this.tàiKhoảnCáNhânToolStripMenuItem.Name = "tàiKhoảnCáNhânToolStripMenuItem";
            this.tàiKhoảnCáNhânToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.tàiKhoảnCáNhânToolStripMenuItem.Text = "Tài Khoản cá nhân";
            this.tàiKhoảnCáNhânToolStripMenuItem.Click += new System.EventHandler(this.tàiKhoảnCáNhânToolStripMenuItem_Click);
            // 
            // logoutToolStripMenuItem
            // 
            this.logoutToolStripMenuItem.Name = "logoutToolStripMenuItem";
            this.logoutToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.logoutToolStripMenuItem.Text = "Đăng Xuất";
            this.logoutToolStripMenuItem.Click += new System.EventHandler(this.logoutToolStripMenuItem_Click);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.txbMaPhanKhu);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Location = new System.Drawing.Point(93, 50);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(326, 36);
            this.panel3.TabIndex = 1;
            // 
            // txbMaPhanKhu
            // 
            this.txbMaPhanKhu.Location = new System.Drawing.Point(111, 8);
            this.txbMaPhanKhu.Name = "txbMaPhanKhu";
            this.txbMaPhanKhu.Size = new System.Drawing.Size(212, 20);
            this.txbMaPhanKhu.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã Phân khu: ";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txbTenPhanKhu);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(93, 92);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(326, 36);
            this.panel1.TabIndex = 2;
            // 
            // txbTenPhanKhu
            // 
            this.txbTenPhanKhu.Location = new System.Drawing.Point(111, 8);
            this.txbTenPhanKhu.Name = "txbTenPhanKhu";
            this.txbTenPhanKhu.ReadOnly = true;
            this.txbTenPhanKhu.Size = new System.Drawing.Size(212, 20);
            this.txbTenPhanKhu.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(3, 11);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(96, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Tên Phân Khu: ";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txbMaCongNhan);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Location = new System.Drawing.Point(93, 188);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(326, 36);
            this.panel2.TabIndex = 3;
            // 
            // txbMaCongNhan
            // 
            this.txbMaCongNhan.Location = new System.Drawing.Point(111, 8);
            this.txbMaCongNhan.Name = "txbMaCongNhan";
            this.txbMaCongNhan.Size = new System.Drawing.Size(212, 20);
            this.txbMaCongNhan.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(3, 11);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(99, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Mã Công Nhân: ";
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.txbTenCongNhan);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(93, 230);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(326, 36);
            this.panel4.TabIndex = 4;
            // 
            // txbTenCongNhan
            // 
            this.txbTenCongNhan.Location = new System.Drawing.Point(111, 8);
            this.txbTenCongNhan.Name = "txbTenCongNhan";
            this.txbTenCongNhan.Size = new System.Drawing.Size(212, 20);
            this.txbTenCongNhan.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 11);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(97, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Tê Công Nhân: ";
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.txbDateTime);
            this.panel5.Controls.Add(this.label5);
            this.panel5.Location = new System.Drawing.Point(93, 320);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(326, 36);
            this.panel5.TabIndex = 5;
            // 
            // txbDateTime
            // 
            this.txbDateTime.Location = new System.Drawing.Point(111, 8);
            this.txbDateTime.Name = "txbDateTime";
            this.txbDateTime.Size = new System.Drawing.Size(212, 20);
            this.txbDateTime.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(3, 11);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(113, 13);
            this.label5.TabIndex = 0;
            this.label5.Text = "Ngày Tháng Năm: ";
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.txbKhoiLuong);
            this.panel6.Controls.Add(this.label6);
            this.panel6.Location = new System.Drawing.Point(93, 362);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(326, 36);
            this.panel6.TabIndex = 6;
            // 
            // txbKhoiLuong
            // 
            this.txbKhoiLuong.Location = new System.Drawing.Point(111, 8);
            this.txbKhoiLuong.Name = "txbKhoiLuong";
            this.txbKhoiLuong.Size = new System.Drawing.Size(212, 20);
            this.txbKhoiLuong.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(3, 11);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(106, 13);
            this.label6.TabIndex = 0;
            this.label6.Text = "Khối Lượng (Kg): ";
            // 
            // btnSua
            // 
            this.btnSua.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.Location = new System.Drawing.Point(93, 429);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(104, 42);
            this.btnSua.TabIndex = 7;
            this.btnSua.Text = "SỬA";
            this.btnSua.UseVisualStyleBackColor = true;
            // 
            // btnUpdate
            // 
            this.btnUpdate.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpdate.Location = new System.Drawing.Point(300, 429);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(104, 42);
            this.btnUpdate.TabIndex = 8;
            this.btnUpdate.Text = "CẬP NHẬP";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // dtgvSanLuong
            // 
            this.dtgvSanLuong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvSanLuong.Location = new System.Drawing.Point(425, 50);
            this.dtgvSanLuong.Name = "dtgvSanLuong";
            this.dtgvSanLuong.Size = new System.Drawing.Size(358, 421);
            this.dtgvSanLuong.TabIndex = 9;
            // 
            // flpManager
            // 
            this.flpManager.Location = new System.Drawing.Point(12, 50);
            this.flpManager.Name = "flpManager";
            this.flpManager.Size = new System.Drawing.Size(75, 421);
            this.flpManager.TabIndex = 10;
            // 
            // fManager
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(795, 483);
            this.Controls.Add(this.flpManager);
            this.Controls.Add(this.dtgvSanLuong);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.panel6);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "fManager";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QLNT-CaoSu";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvSanLuong)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem adminToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem thôngTinTàiKhoảnToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tàiKhoảnCáNhânToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem logoutToolStripMenuItem;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox txbMaPhanKhu;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txbTenPhanKhu;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txbMaCongNhan;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox txbTenCongNhan;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txbDateTime;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.TextBox txbKhoiLuong;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.DataGridView dtgvSanLuong;
        private System.Windows.Forms.FlowLayoutPanel flpManager;
    }
}