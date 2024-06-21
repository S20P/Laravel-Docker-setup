# Laravel-Docker-setup
Laravel project run through Windows 11 local Descktop  Docker .


Docker setup  on Windows 11
---------------------------

     
     -> Open "Turn Windows feature on or off"
	    Enable "windows subsystem for Linux"
	     
		 
		 wsl --status
		 wsl --update
		 wsl --install -d Ubuntu
		 
-------------------------------------------------------------		 
        docker version
        docker images
        docker search mysql
        docker ps
        docker-compose ps
        
        docker-compose down
        docker-compose up --build
        docker-compose up -d --build
        
        
        docker-compose logs database
        docker-compose logs php
        
    

        
        docker-compose exec php bash


-----------------------------------------------------------	 
		 In Laravel Project
		 
        file -> Dockerfile
        file -> docker-compose.yml
        dir  -> Docker
                file -> entrypoint.sh
    
        
        check MySQL is running
        netstat -ano | findstr :3306
------------------------------------------------------------
		   