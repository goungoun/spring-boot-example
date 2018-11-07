docker run -p 27017:27017 --name some_mongo -d mongo
docker run -it --link some_mongo:mongo --rm mongo sh -c 'exec mongo'
