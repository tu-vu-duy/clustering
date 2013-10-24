Clustering
==========

Following the guidle to start your clustering.

 1. Clone this repository: git clone git@github.com:tu-vu-duy/clustering.git

 2. Makes the 'gatein-data' folder responsible for storing jcr indexing. 
    Notice: It has the *same hierarchy* with 'node1' and 'node2' folder. 

 3. Download tomcat bundle in acceptance with infinispan feature, because this feature dedicated tomcat clustering. 
 
 4. Datasource configuration is available in *server.xml* in *node1 and node2* folder such as
 
<Resource name="exo-idm_portal" auth="Container" type="javax.sql.DataSource"
              initialSize="5" maxActive="20" minIdle="5" maxIdle="15" maxWait="10000"
              validationQuery="SELECT 1" validationQueryTimeout="5"
              testWhileIdle="true" testOnBorrow="true" testOnReturn="false"
              timeBetweenEvictionRunsMillis="30000" minEvictableIdleTimeMillis="60000"
              removeAbandoned="true" removeAbandonedTimeout="300" logAbandoned="false"
              poolPreparedStatements="true"
              username="root" password="root" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/plf_idm?autoReconnect=true" />

    <!-- eXo JCR Datasource for portal -->
    <Resource name="exo-jcr_portal" auth="Container" type="javax.sql.DataSource"
              initialSize="5" maxActive="20" minIdle="5" maxIdle="15" maxWait="10000"
              validationQuery="SELECT 1" validationQueryTimeout="5"
              testWhileIdle="true" testOnBorrow="true" testOnReturn="false"
              timeBetweenEvictionRunsMillis="30000" minEvictableIdleTimeMillis="60000"
              removeAbandoned="true" removeAbandonedTimeout="300" logAbandoned="false"
              poolPreparedStatements="true"
              username="root" password="root" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/plf_jcr?autoReconnect=true" /> 
 
  
 then, you must make sure both of 'plf_idm' and 'plf_jcr' are existing in your mysql, 
 if NOT, you must create them before.
 
 One more thing is very importance!
 
 *DON'T FORGET TO UPDATE YOUR PASSWORD OF MYSQL.*
 
 5. Copy downloaded tomcat bundle to 'node1' and 'node2'. Don't override existing files, 
    if not, you make lost existing configuration for clustering.
 
 6. How to change the port on node? You should use separate browser, 
    node1: http://127.0.0.1:18080/portal
    node2: http://localhost:28080/portal
    
 
