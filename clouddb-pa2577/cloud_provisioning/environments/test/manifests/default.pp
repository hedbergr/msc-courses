node 'appserver' {
    include baseconfig, nodejs
}

node 'dbserver' {
    include baseconfig, mysql
}

node default {
    include baseconfig
}
