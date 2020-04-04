
<header class="main-header">
    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="images/logo.png" alt="logo-mini" style="width:50px;height:25px;"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="images/logo-unimas.png" alt="logo-lg" style="width:200px;height:45px;"></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
	  <p style = "color:white; font-size:23px; font-family: arvo; border-radius: 1em;padding: 1em;position: absolute;top: 50%;left: 41%;margin-right: -50%;transform: translate(-50%, -50%)">FCSIT KIOSK EMPLOYEE</p>
    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			  
              <img src="<?php echo (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg'; ?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $user['firstname'].' '.$user['lastname']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg'; ?>" class="img-circle" alt="User Image">

                <p>
                  <?php echo $user['firstname'].' '.$user['lastname']; ?>
                  <small>Member since <?php echo date('M. Y', strtotime($user['created_on'])); ?></small>
                </p>
              </li>
              <li class="user-footer">
                <div class="pull-right">
                  <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
	</nav>
  </header>