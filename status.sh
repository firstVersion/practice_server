if [ $(docker ps | grep -c practice_server) -eq "1" ]; then echo "Running!"; else echo "Stopping!"; fi
