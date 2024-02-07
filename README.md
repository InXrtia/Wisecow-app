# Wisecow-app

Installations:
1. Docker
2. Kubernetes
3. Fortune-mod Cowsay
4. Git

### All the commands for the installations can be accessed through Internet or also checkout 'https://github.com/LondheShubham153/kubestarter.git' for kubernetes installation.

### Install fortune cowsay through: $ sudo apt-get install fortune-mod cowsay -y
### Clone the git url to your Local host or AWS instance 
### To run kubernetes on EC2 Instance make sure to select instance type as t2.medium or above.
### Give kubernetes api-server permission to 'port 8080' to host Wisecow-app on the local machine.
### To clone the Wisecow-app repository use 'Token.txt' for password.
### For the the TLS encryption enter 'your-domain-name.com' to check TLS communication.
#### Wisecow-app can be accessed through targetPort: 4499 and nodePort: 30007. eg:- 'my-ip:4499.com'
#### after installing Docker write: '$ sudo chown $USER /var/run/docker.sock', this gives permission for the current user to run docker. For eg: run 'docker ps'.

