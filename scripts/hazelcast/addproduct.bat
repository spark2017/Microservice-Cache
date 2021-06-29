set HOME=C:\POC\Microservice\Cache

set CLASSPATH=%HOME%\src\main\resources
set CLASSPATH=%CLASSPATH%;%HOME%\target\classes
set CLASSPATH=%CLASSPATH%;%HOME%\lib\amqp-client-3.5.4.jar
set CLASSPATH=%CLASSPATH%;%HOME%\lib\commons-io-1.2.jar
set CLASSPATH=%CLASSPATH%;%HOME%\lib\hazelcast-all-3.10.2.jar
set CLASSPATH=%CLASSPATH%;%HOME%\lib\slf4j-api-1.7.26.jar
set CLASSPATH=%CLASSPATH%;%HOME%\lib\slf4j-simple-1.7.26.jar

echo %CLASSPATH%
java -cp %CLASSPATH% hazelcast.AddProduct %1