#!/bin/bash

# Generate the output of Cowsay with a custom message
function generate_cowsay() {
    echo "Hello Shrey" | /usr/games/cowsay
}

# Listen on port 4499 for incoming connections and serve the output of Cowsay
function serve_cowsay() {
    # Print a message indicating that the script is serving Cowsay
    echo "Serving the output of Cowsay on port 4499..."

    # Serve the output as HTML
    while true; do
        # Generate the output of Cowsay with the custom message
        output=$(generate_cowsay)
        # Serve the output as HTML
        echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE html><html><head><title>Cowsay Output</title></head><body><pre>$output</pre></body></html>" | nc -l -p 4499
    done
}

# Start serving Cowsay
serve_cowsay

