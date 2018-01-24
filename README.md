# docker-standard

To use

Install docker on your computer. 

Share the C drive in the settings . It will ask for your own credentials, please place them in. DO not put in the admin credentials ! 

Go into your c:\users\{yourusername}

Create a directory and then place the extracted Zip into the directory. 

OPen a command window in the directory

To start the machines use

docker-compose up -d 

It will take some time initially to set up the machine but at the end of it you will have a new drive called public in the directory. This is your web root. 

Check out what the project into the public drive. IF you need to change the document root edit the vhost.conf file in the docker directory to the relevent document root. 

Apache is available on localhost:8080 
MySql is available on localhost:81

the credentials are in the docker-compose file. 

if you want to get on the web machine use

docker exec -it {thecontainername} bash 

Do not edit the docker file or docker compose file.
