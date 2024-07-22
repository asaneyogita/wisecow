# Using Alpine Linux which is lightweight
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

#Copy the .sh file from your local host to the container
COPY wisecow.sh .

#Make the script executable
RUN chmod +x 777 wisecow.sh

# which user can run the script
USER root

#Specify the command to run your script when the container starts
CMD ["./wisecow.sh"]

#Expose the port 
EXPOSE 4499



