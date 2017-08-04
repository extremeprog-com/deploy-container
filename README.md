# docker-build-prepare

## Installing

- npm i @extremeprog-com/deploy-container

## Usage
- Go to a root directory of your project
Open a terminal and run:
- node_modules/deploy-container/generate_deploy_folder <container_name>

In your project folder /containers/<container_name> directory will be created. You can find 3 files inside: .gitignore, Dockerfile and run_app.sh .
Dockerfile and run_app.sh are prepared for ionic 1 project with server scripts in folder /server by default. You can change this files as you need.

When everything is ready for deploy go to the <project_root>/containers folder and run:
- ../node_modules/deploy-container/deploy_project_remotely <user_email> <container_name>