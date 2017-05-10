### Service building

```
dotnet restore
dotnet publish -c Release -o out
```

### Docker image building

```
sudo docker build -t serviceapi .
```

### Run the container

```
sudo docker run -d -p 80:80 serviceapi
```

### Useful commands

- Show running containers `sudo docker ps`
- Stop runnung container `sudo docker rm <ID>`