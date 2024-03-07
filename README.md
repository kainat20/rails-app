# README
## Rails Application
A simple rails API made to run with docker.
# Getting Started
  This solution uses: 
- Ruby version 2.7.1
- Rails version 6.0.4
- Postgres version 11.22
- Docker version 25.0.3
- Docker Compose version v2.24.5
### Setting up containers:

Run this command to build docker images
```
docker-compose build
```
Run this command to run containers
```
docker-compose up -d
```
### Setting up the Database inside container
```
rails db:create
```
```
rails db:migrate
```
```
rails db:seed
```
### Start the Rails Server
```
rails server
```
### Running Tests
```
bundle exec rspec
```
