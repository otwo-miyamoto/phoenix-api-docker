
# phoenix-api-docker
Install docker on CentOS
    
    $ sudo yum install -y yum-utils
    $ sudo yum-config-manager \
    --add-repo \
    https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
    $ sudo yum -y install docker-engine
    $ curl -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    $ chmod +x /usr/local/bin/docker-compose
    
Docker start.

    $ systemctl start docker
    $ systemctl enable docker

start docker container.
    
    $ docker-compose up -d

Get phoenix deps.

    $ docker-compose run web mix deps.get

Install node package.

    $ docker-compose run web npm install

Migrate db.

    $ docker-compose run web mix ecto.migrate

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

    $ mysql -u root -p -h 0.0.0.0
