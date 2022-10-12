node 'appserver' {
    include baseconfig, nodejs, hosts
}

node 'dbserver' {
    include baseconfig, mysql, hosts
}

node default {
    include baseconfig, hosts
}
