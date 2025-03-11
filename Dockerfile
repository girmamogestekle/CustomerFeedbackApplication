# Use Amazon Linux 2 as the base image for AWS Lambda
FROM public.ecr.aws/lambda/java:11

# Set the working directory inside the container
WORKDIR /var/task

# Copy the application JAR file into the container
COPY target/*.jar customer-feedback-application.jar

# Set the command to run the Lambda function
CMD ["customer-feedback-application.jar"]
