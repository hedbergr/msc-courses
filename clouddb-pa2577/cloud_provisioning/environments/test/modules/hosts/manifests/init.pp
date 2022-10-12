class hosts {
  file { '/vagrant/hosts':
    ensure => file,
  }

  file { '/etc/hosts':
    ensure => link,
    force  => true,
    target => '/vagrant/hosts'
  }

  host{ $hostname:
    ensure => 'present',
    target =>'/vagrant/hosts',
    ip     => $networking[interfaces][eth1][ip],
  }
}
