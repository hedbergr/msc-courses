node 'appserver' {
    include baseconfig, nodejs
}

node 'dbserver' {
    include baseconfig, mysql
}

node 'web'  {
    include baseconfig, nginx
}

node default {
    include baseconfig
}
