package code.seven.test.dynamodb1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient
@ComponentScan(basePackages="code.seven.test.dynamodb1")
public class Dynamodb1Application {

	public static void main(String[] args) {
		SpringApplication.run(Dynamodb1Application.class, args);
	}

}
