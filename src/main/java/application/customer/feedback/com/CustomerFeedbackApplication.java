package application.customer.feedback.com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import application.customer.feedback.com.controller.PingController;


@SpringBootApplication
// We use direct @Import instead of @ComponentScan to speed up cold starts
// @ComponentScan(basePackages = "application.customer.feedback.com.controller")
@Import({ PingController.class })
public class CustomerFeedbackApplication {

    public static void main(String[] args) {
        SpringApplication.run(CustomerFeedbackApplication.class, args);
    }
}