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
getk8stoken(){
    kubectl -n kubernetes-dashboard describe secrets dashboard-admin-secret
}

## Quasys Servers SSH

sshquasyskube(){
    ssh quasys@ec2-3-212-26-205.compute-1.amazonaws.com
}
sshquasysconjur(){
    ssh quasys@ec2-44-196-149-150.compute-1.amazonaws.com
}
sshportal(){
  ssh -i /Users/abdulmelikkalkan/Developer/Quasys/AWS/portal.pem ec2-user@ec2-54-158-10-1.compute-1.amazonaws.com
}
