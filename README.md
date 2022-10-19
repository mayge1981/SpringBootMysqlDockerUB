
1. Pre-requisite 
   1. You need a running Mysql database instance  
      * docker run --name mysql-db01 -v /var/lib/mysqldb01:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=my-secret-ps -e MYSQL_DATABASE=db01 -e MYSQL_USER=db01_user -e MYSQL_PASSWORD=my-secret-ps-01 -p 3306:3306 -p 33060:33060 -d mysql:8.0.30
   2. Inside Mysql create a table named userinfo and insert some dummy data
      ```
      CREATE TABLE userinfo (  
        username VARCHAR(255),
        email VARCHAR(255)
      );
      ```
   3. Insert some rows 
      ```
      INSERT into userinfo(username, email) VALUES ('user01','foo@bar.baz');
      COMMIT;
      ```


2. Building and running sample Springboot API with Mysql DB
   1. Modify **application.properties** with the actual Mysql host
   2. Build Docker image for Springboot with Mysql Demo 
      * docker build -t springbootmysqlub:latest .
   3. Run Docker Image
      * docker run --name springbootmysql -p 8081:8080 springbootmysqlub:latest
   4. Access API
      * http://localhost:8081/test
      * http://localhost:8081/getUserInfo?username=user01
