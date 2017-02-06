# phoenix-api-docker
You need to install docker-compose

docker-compose up -d
docker-compose run web npm install

docker-compose run web mix phoenix.gen.json User users name:string sex:integer
docker-compose run web mix ecto.migrate

docker-compose run web mix phoenix.server

You can visit below url.
http://localhost:4000/
http://localhost:4000/users
