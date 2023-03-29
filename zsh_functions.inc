#This is functions script
getports(){
    lsof -i -P | grep LISTEN | grep :$PORT
}
dirmdangling(){
    docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
}

checkcert(){
    openssl x509 -noout -text -in $1
}
