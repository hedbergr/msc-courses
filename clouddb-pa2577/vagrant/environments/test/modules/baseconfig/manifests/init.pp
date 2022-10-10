class baseconfig {

    exec { 'apt-update':
        command => '/usr/bin/apt-get update'
    }

    Exec["apt-update"] -> Package <| |>

    package { "curl":
        ensure  => latest
    }
}