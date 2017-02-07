
# phoenix-api-docker
You need to install docker-compose

start docker container.
    
    $ docker-compose up -d


Install node package

    $ docker-compose run web npm install


Start phoenix server.

    $ docker-compose run web mix phoenix.server

You can visit below url.

    http://localhost:4000/
    http://localhost:4000/users

#Memo
Ecto command.
    docker-compose run web mix phoenix.gen.json User users name:string sex:integer
    docker-compose run web mix ecto.migrate
