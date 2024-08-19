# a puppet code that fixes a wordpress site 501 error to 200 ok
# editing the mistyped .phpp to php in the /var/www/html/wp-settings.php file

exec { 'fix-wordpress-server-error':
    command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
    path    => '/var/bin/:/bin/',
}
