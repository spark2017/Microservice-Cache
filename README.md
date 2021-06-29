# Caching 

The replicated cache(Hazelcast, Ignite) example for Microservice implementations.

Install Rabbit MQ

For Docker Installation, use below command

docker run -d --hostname my-rabbit --name some-rabbit -p 9080:5672 -p 9081:15672 rabbitmq:3-management

Be sure to go into common.AMQPCommon.java and update the connection info for RabbitMQ: (you can get this info from the RabbitMQ logs or doing a "docker ps" if you are using the docker image)

```
public static Channel connect() throws Exception {	
	ConnectionFactory factory = new ConnectionFactory();	

-->	factory.setHost("localhost");

-->	factory.setPort(9080);

	Connection conn = factory.newConnection();	
	return conn.createChannel();	
}
```
Windows
   Use  .bat scripts (scripts folder)

Unix/Linux
   Use .sh scripts (Scripts folder)

Prerequisite

   1. You will also need to be sure and run the AMQPInitialize class to setup all of the exchanges, queues, and bindings used by these examples.
   2. To run these code samples you will need Java 1.7 or higher, RabbitMQ (3.5.4) (I use the latest rabbitmq docker image from Pivotal), and Hazelcast 3.10.2 or higher.

Run Demo
  
  1. Windows - Customer name Replication (separate window for each scripts)
     customerinfoservoce.bat 
     updatenames.bat
     datawriter.bat
      
  2. productservice.bat
     wishlistservice.bat
     additem.bat
     addproduct.bat




