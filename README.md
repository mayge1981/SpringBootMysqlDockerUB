You need to have a running Mysql

Pre-requisite 
(1) docker run --name mysql-db01 -v /var/lib/mysqldb01:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=my-secret-ps -e MYSQL_DATABASE=db01 -e MYSQL_USER=db01_user -e MYSQL_PASSWORD=my-secret-ps-01 -p 3306:3306 -p 33060:33060 -d mysql:8.0.30

Building and running Springboot with Mysql DB
(1) docker build -t springbootmysqlub:latest .
(2) docker run --name springbootmysql -p 8080:8080 springbootmysqlub:latest
(3) Access API
(3.1) http://localhost:8080/test
(3.2) http://localhost:8080/getUserInfo?username=user01