     <div id="wrapper">
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
          <span><?php echo $this->session->userdata('name_store'); ?></span>
        </div>
        <div class="container-fluid">
          <div class="navbar-btn">
            <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
          </div>
          <div id="navbar-menu">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <span><?php echo $this->session->userdata('name_user'); ?></span> <i class="icon-submenu lnr lnr-chevron-down"></i>
                </a>
                <ul class="dropdown-menu">
                  <li><a href="<?php echo base_url(); ?>login/logout"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- END NAVBAR -->

      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
          <nav>
            <ul class="nav">
              <li><a href="<?php echo base_url(); ?>home"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
              <li>
                <a href="#dt_master" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Data Master</span> <i class="icon-submenu lnr lnr-chevron-right"></i></a>
                <div id="dt_master" class="collapse ">
                  <ul class="nav">
                    <li><a href="<?php echo base_url(); ?>registration"></i> <span>Registrasi</span></a></li>
                    <li><a href="<?php echo base_url(); ?>user"></i> <span>User</span></a></li>
                    <li><a href="<?php echo base_url(); ?>thrid_party"></i> <span>Pihak Ke Tiga</span></a></li>
                    <li><a href="<?php echo base_url(); ?>category"></i> <span>Kategori Akun</span></a></li>
                    <li><a href="<?php echo base_url(); ?>account"></i> <span>Data Akun</span></a></li>
                    <li><a href="<?php echo base_url(); ?>product"></i> <span>Data Produk</span></a></li>
                  </ul>
                </div>
              </li>
              <li><a href="<?php echo base_url(); ?>procurement"><i class="lnr lnr-cart"></i> <span>Pembelian</span></a></li>
              <li><a href="<?php echo base_url(); ?>sales"><i class="lnr lnr-tag"></i> <span>Penjualan</span></a></li>
              <li><a href="<?php echo base_url(); ?>moving"><i class="lnr lnr-location"></i> <span>Moving Stock</span></a></li>
              <li><a href="<?php echo base_url(); ?>transaction"><i class="lnr lnr-list"></i> <span>Jurnal Umum</span></a></li>
              <li>
                <a href="#closing" data-toggle="collapse" class="collapsed"><i class="lnr lnr-layers"></i> <span>Closing</span> <i class="icon-submenu lnr lnr-chevron-right"></i></a>
                <div id="closing" class="collapse ">
                  <ul class="nav">
                    <li><a href="<?php echo base_url(); ?>period_closing"></i> <span>Periode Closing</span></a></li>
                    <li><a href="<?php echo base_url(); ?>closing"></i> <span>Proses Closing</span></a></li>
                    <li><a href="<?php echo base_url(); ?>rollback_closing"></i> <span>Rollback Closing</span></a></li>
                  </ul>
                </div>
              </li>
              <li>
                <a href="#dt_report" data-toggle="collapse" class="collapsed"><i class="lnr lnr-book"></i> <span>Laporan</span> <i class="icon-submenu lnr lnr-chevron-right"></i></a>
                <div id="dt_report" class="collapse ">
                  <ul class="nav">
                    <li><a href="<?php echo base_url(); ?>profit"></i> <span>Laba Usaha</span></a></li>
                    <li><a href="<?php echo base_url(); ?>inventory"></i> <span>Persediaan</span></a></li>
                    <li><a href="<?php echo base_url(); ?>inventory_v2"></i> <span>Stock</span></a></li>
                    <li><a href="<?php echo base_url(); ?>list_jurnal"></i> <span>Jurnal</span></a></li>
                    <li><a href="<?php echo base_url(); ?>ledger"></i> <span>Ledger</span></a></li>
                    <li><a href="<?php echo base_url(); ?>neraca"></i> <span>Neraca</span></a></li>
                    <li><a href="<?php echo base_url(); ?>profit_loss"></i> <span>Laba Rugi</span></a></li>
                  </ul>
                </div>
              </li>

            </ul>
          </nav>
        </div>
      </div>
    <!-- END LEFT SIDEBAR -->