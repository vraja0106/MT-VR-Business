echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>
	<Context><WatchedResource>WEB-INF/web.xml</WatchedResource>
	<Resource name=\"jdbc/VehicleRental\" auth=\"Container\" type=\"javax.sql.DataSource\" username=\"root\" password=\"${DB_PASSWORD}\" driverClassName=\"com.mysql.jdbc.Driver\" url=\"jdbc:mysql://${DB_IP}:${DB_PORT}/${DB}\" maxActive=\"8\" maxIdle=\"4\"/>
	</Context>" > /etc/tomcat7/context.xml ;
service tomcat7 start ;
tail -f /var/lib/tomcat7/logs/catalina.out
