package com.returnorder.portal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@EnableFeignClients
public class ReturnOrderPortalApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReturnOrderPortalApplication.class, args); 
	}

}
 