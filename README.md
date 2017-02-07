
# phoenix-api-docker
You need to install docker-compose

start docker container.
    
    $ docker-compose up -d


Install node package.

    $ docker-compose run web npm install


Start phoenix server.

    $ docker-compose run web mix phoenix.server

You can visit below url.

    http://localhost:4000/
    http://localhost:4000/api/v1/users

#Memo
Ecto command.

    Create scaffolding.
    $ docker-compose run web mix phoenix.gen.json User users name:string sex:integer
    Update db.
    $ docker-compose run web mix ecto.migrate
    Change tables.
    $ docker-compose run web mix ecto.gen.migrate email_to_user

Access Mysql on docker from host pc.

    $ mysql -u root -p -h 0.0.0.0 -P 13306
