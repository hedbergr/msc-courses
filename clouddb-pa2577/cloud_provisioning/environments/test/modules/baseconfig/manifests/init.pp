class baseconfig {

    exec { 'apt-update':
        command => '/usr/bin/apt-get update'
    }

    package { "curl":
        ensure  => latest
    }
}
