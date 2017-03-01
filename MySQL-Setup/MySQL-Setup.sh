#! /bin/bash

/usr/bin/mysql -u root --password=mdaramas -e "CREATE DATABASE drupal CHARACTER SET utf8 COLLATE utf8_general_ci";
/usr/bin/mysql -u root --password=mdaramas -e "CREATE DATABASE civicrm CHARACTER SET utf8 COLLATE utf8_general_ci";
/usr/bin/mysql -u root --password=mdaramas -e "CREATE USER drupal@localhost IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "CREATE USER drupal@127.0.0.1 IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "CREATE USER civicrm@localhost IDENTIFIED BY 'civicrm'";
/usr/bin/mysql -u root --password=mdaramas -e "CREATE USER civicrm@127.0.0.1 IDENTIFIED BY 'civicrm'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT ALL ON drupal.* TO 'drupal'@'localhost' IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT ALL ON drupal.* TO 'drupal'@'127.0.0.1' IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT ALL ON civicrm.* TO 'civicrm'@'localhost' IDENTIFIED BY 'civicrm'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT ALL ON civicrm.* TO 'civicrm'@'127.0.0.1' IDENTIFIED BY 'civicrm'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT SELECT ON civicrm.* TO 'drupal'@'localhost' IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "GRANT SELECT ON civicrm.* TO 'drupal'@'127.0.0.1' IDENTIFIED BY 'drupal'";
/usr/bin/mysql -u root --password=mdaramas -e "FLUSH PRIVILEGES";