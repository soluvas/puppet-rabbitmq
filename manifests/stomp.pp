# Class: rabbitmq::stomp
#
#Enables Stomp
#
# Usage:
# include rabbitmq::stomp
#

# Ugly hack using static files ..
# There most probably is a better approach to this
class rabbitmq::stomp (
  $stomp_tcp_listener_host = '127.0.0.1',
  $stomp_tcp_listener_port = 6163)
{

#  file { rabbitmq-cowboy:
#    path    => "/usr/lib/rabbitmq/lib/rabbitmq_server-${rabbitmq::dir_version}/plugins/cowboy-0.5.0-rmq2.8.2-git4b93c2d.ez",
#    source  => 'puppet:///modules/rabbitmq/cowboy-0.5.0-rmq2.8.2-git4b93c2d.ez',
#    mode    => 0644,
#    group   => 'root',
#    owner   => 'root',
#    require => Package['rabbitmq-server'],
#  }
#  file { rabbitmq-sockjs:
#    path    => "/usr/lib/rabbitmq/lib/rabbitmq_server-${rabbitmq::dir_version}/plugins/sockjs-0.2.1-rmq2.8.2-gitfa1db96.ez",
#    source  => 'puppet:///modules/rabbitmq/sockjs-0.2.1-rmq2.8.2-gitfa1db96.ez',
#    mode    => 0644,
#    group   => 'root',
#    owner   => 'root',
#    require => Package['rabbitmq-server'],
#  }
#  file { rabbitmq-web-stomp:
#    path    => "/usr/lib/rabbitmq/lib/rabbitmq_server-${rabbitmq::dir_version}/plugins/rabbitmq_web_stomp-2.8.2.ez",
#    source  => 'puppet:///modules/rabbitmq/rabbitmq_web_stomp-2.8.2.ez',
#    mode    => 0644,
#    group   => 'root',
#    owner   => 'root',
#    require => Package['rabbitmq-server'],
#  }
#  file { '/etc/rabbitmq/enabled_plugins':
#    mode    => 0644,
#    group   => 'root',
#    owner   => 'root',
#    source  => 'puppet:///modules/rabbitmq/enabled_plugins',
#    require => File['rabbitmq-cowboy', 'rabbitmq-sockjs', 'rabbitmq-web-stomp'],
#    notify  => Service['rabbitmq-server'],
#  }
#  file { '/etc/rabbitmq/rabbitmq.config':
#    mode    => 0644,
#    group   => 'root',
#    owner   => 'root',
#    content => template('rabbitmq/rabbitmq.config-stomp.erb'),
#    require => File['rabbitmq-cowboy', 'rabbitmq-sockjs', 'rabbitmq-web-stomp'],
#    notify  => Service['rabbitmq-server'],
#  }

}
