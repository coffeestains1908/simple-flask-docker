# simple-flask-docker
Example of using Flask in Docker

### Docker
```
docker build -t flask-app .
docker run -p 5000:8080 -d flask-app # your app will be accessible via port 5000
```

### NGINX config
inside server block
```
location /flask-app/ {
  proxy_pass  http://127.0.0.1:5000/;
  proxy_set_header  Host $host;
  proxy_set_header  X-Real-IP $remote_addr;
  proxy_set_header  X-Forwarded-For $proxy_add_x_forwarded_for;
}
```
