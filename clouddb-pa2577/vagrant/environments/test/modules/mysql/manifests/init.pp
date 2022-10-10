class mysql {
    package { 'mysql-server':
        ensure => installed,
    }

    service { "mysql":
        ensure => "running",
        enable => "true",
        require => Package["mysql-server"],
    }

    exec { 'set-mysql-password':
        unless  => 'mysqladmin -uroot -proot status',
        command => "mysqladmin -uroot password root",
        path    => ['/bin', '/usr/bin'],
        require => Service['mysql'];
    }
}
