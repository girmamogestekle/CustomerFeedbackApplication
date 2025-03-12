FROM public.ecr.aws/lambda/java:11

# Set the working directory inside the container
WORKDIR /var/task

# Copy the application JAR file into the container
COPY target/CustomerFeedbackApplication-1.0-SNAPSHOT.jar customer-feedback-application.jar

# Use ENTRYPOINT to specify the classpath and Spring Boot handler
#ENTRYPOINT ["java", "-cp", "application.customer.feedback.com.StreamLambdaHandler"]
ENTRYPOINT ["java", "-jar", "customer-feedback-application.jar"]
