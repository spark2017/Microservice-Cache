package common;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

public class AMQPCommon {

	public static Channel connect() throws Exception {
		ConnectionFactory factory = new ConnectionFactory();
		factory.setHost("localhost");
		factory.setPort(9080);
		factory.setUsername("guest");
		factory.setPassword("guest");
		//factory.setUri("amqp://guest@guest@localhost:15672/%2F");
		//factory.setVirtualHost("/");
		//factory.setPort(32768);
		Connection conn = factory.newConnection();
		System.out.println("Queue connection created..");
		return conn.createChannel();
	}
	
	public static void close(Channel channel) throws Exception {
		channel.close();
		channel.getConnection().close();
	}

}



