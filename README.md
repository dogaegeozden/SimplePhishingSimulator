# Build container
docker build -t simplephishingsimulator:latest .

# Start container
docker run --name simplephishingsimulator -d -p 5000:5000 --rm simplephishingsimulator:latest

# Stop container
docker stop simplephishingsimulator

# List running containers
docker ps
# See working dir & contents
docker exec -it <container_id> sh -c 'pwd; ls -la'

# Read file (adjust path if needed)
docker exec -it <container_id> sh -c 'cat events.log'
docker exec -it <container_id> sh -c 'tail -n 100 events.log'
