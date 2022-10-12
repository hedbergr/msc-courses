class baseconfig {

    exec { 'apt-update':
        command => '/usr/bin/apt-get update'
    }

    package { "curl":
        ensure  => latest
    }

    exec { 'lookup':
        command => "ifconfig eth1 | grep inet | awk '{ print $2 }' | head -1 >> /vagrant/hosts",
        provider => shell;
    }
}
