docker-compose -f ./redis-master-slave/redis-master-1/docker-compose.yml up -d
timeout /t 5
docker-compose -f ./redis-master-slave/redis-slave-1/docker-compose.yml up -d
timeout /t 5
docker-compose -f ./redis-master-slave/redis-slave-2/docker-compose.yml up -d
timeout /t 5
docker-compose -f ./redis-sentinel/redis-sentinel-1/docker-compose.yml up -d
timeout /t 5
docker-compose -f ./redis-sentinel/redis-sentinel-2/docker-compose.yml up -d
timeout /t 5
docker-compose -f ./redis-sentinel/redis-sentinel-3/docker-compose.yml up -d