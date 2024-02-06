#!/bin/bash

# Define the URL of the application to check
app_url="http://your-domain-name.com"

# Function to check the status of the application
check_application_status() {
    local response=$(curl -s -o /dev/null -w "%{http_code}" "$app_url")
    if [ "$response" == "200" ]; then
        echo "Application is UP. HTTP Status Code: $response"
    else
        echo "Application is DOWN. HTTP Status Code: $response"
    fi
}

# Main function to call the status check function
main() {
    check_application_status
}

# Call the main function
main

# chmod +x applicationcheckup.sh to make script executable.
# run the script to check the status of application.
