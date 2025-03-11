# Use Amazon Linux 2 as the base image for AWS Lambda
FROM public.ecr.aws/lambda/java:11

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/*.jar customer-feedback-applicationapp.jar

# Set the command to run the Lambda function
CMD ["customer-feedback-application.jar"]
