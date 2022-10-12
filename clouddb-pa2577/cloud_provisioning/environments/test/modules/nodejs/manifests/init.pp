class nodejs {
    exec {"prepare nodejs":
        command => 'curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -',
        provider => shell,
        onlyif => "/bin/bash -c 'command -v curl'"
    }

    package { "nodejs":
        ensure => "latest",
        require => Exec['apt-update']
    }

    package { "git":
        ensure => "latest",
        require => Exec['apt-update']
    }

    package { "build-essential":
        ensure => "latest",
        require => Exec['apt-update']
    }
}
