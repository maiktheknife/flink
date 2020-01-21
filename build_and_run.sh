
# build image
docker build --build-arg slots=1 -t my_flink:0.2-s1 .

# run container
docker-compose up --remove-orphans --scale taskmanager=3

# goto -> localhost:8081
# upload jar file
# run jar file with 
## entrypoint -> de.mm.gradoop.flink.WordCount
## arguments  -> --in /app/text.txt --out /app/text.out

# find results
docker-compose exec --index=1 taskmanager bash
docker-compose exec --index=2 taskmanager bash
docker-compose exec --index=3 taskmanager bash

> ls /app