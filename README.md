# CRUD

Govnocode in Action

Login & password to test this app:

crud/src/main/webapp/WEB-INF/spring/security.xml

        <user name="admin" password="pass" authorities="ROLE_ADMIN,ROLE_USER" />
	<user name="user1" password="1111" authorities="ROLE_USER" />
	<user name="user2" password="2222" disabled="true" authorities="ROLE_USER" />
				

DB properties:
				
crud/src/main/webapp/WEB-INF/jdbc.properties

jdbc.driverClassName=com.mysql.jdbc.Driver

jdbc.dialect=org.hibernate.dialect.MySQLDialect

jdbc.databaseurl=jdbc:mysql://localhost:3306/test

jdbc.username=root

jdbc.password=root
