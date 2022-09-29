# Configure an Ubuntu machine (Using Puppet)

package { 'nginx':
  ensure => installed,
  name   => 'nginx',
}

file_line { 'redirect':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World!',
}

service { 'start nginx':
  ensure => running,
  require => Package['nginx'],
}
