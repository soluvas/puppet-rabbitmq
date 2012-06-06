# = Class: rabbitmq
#
# Installs and runs the rabbitmq messaging server: http://www.rabbitmq.com/.
#
# == Usage:
#
#   include rabbitmq
#
class rabbitmq($package_version = '2.8.2-1', $dir_version = '2.8.2') {

  apt::source { rabbitmq:
    location   => 'http://www.rabbitmq.com/debian/',
    release    => 'testing',
    repos      => 'main',
    key        => '056E8E56',
    key_server => 'keyserver.ubuntu.com',
  }
  # Ensure rabbitmq is installed:
  package { 'rabbitmq-server':
    ensure  => $package_version,
    require => Apt::Source['rabbitmq'],
  }

  $enable = $::operatingsystem ? {
    'Debian'  => undef,
    'Ubuntu'  => undef,
    default   => true
  }
  # Ensure rabbitmq is running:
  service { 'rabbitmq-server':
    ensure      => 'running',
    enable      => true,
    hasrestart  => true,
    hasstatus   => true,
    require     => Package['rabbitmq-server'],
  }
}
