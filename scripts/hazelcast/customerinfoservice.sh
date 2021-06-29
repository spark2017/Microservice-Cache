HOME=C:/POC/Microservice/Cache

CLASSPATH=$HOME/src/main/resources
CLASSPATH=$CLASSPATH:$HOME/target/classes
CLASSPATH=$CLASSPATH:$HOME/lib/*.jar
CLASSPATH=$CLASSPATH:$HOME/lib/amqp-client-3.5.4.jar
CLASSPATH=$CLASSPATH:$HOME/lib/hazelcast-3.10.2.jar

echo $CLASSPATH
java -cp $CLASSPATH --enable-preview hazelcast.CustomerInfoService $1
