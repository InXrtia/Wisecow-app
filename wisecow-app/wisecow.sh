#!/bin/bash

function generate_wisecow() {
    echo "Hello, This Cowsay script is created by Shrey. The desire output is: Living your life is a task so difficult, it has never been attempted before." | /usr/games/cowsay
}

function serve_wisecow() {
    echo "Serving the output of wisecow on port 4499..."

    while true; do
        output=$(generate_wisecow)
        # Serve the output as HTML
        echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE html><html><head><title>Cowsay Output</title></head><body><pre>$output</pre></body></html>" | nc -l -p 4499
    done
}

# Start serving wisecow
serve_wisecow

