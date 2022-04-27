# Finds the phpp file extension issue, fixes it to php automatically using Puppet

exec {'fix-wordpress-php':
  command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path     => '/usr/local/bin/:/bin/'
}