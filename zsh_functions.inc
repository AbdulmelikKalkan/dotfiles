#This is functions script
getports(){
    lsof -i -P | grep LISTEN | grep :$PORT
}
