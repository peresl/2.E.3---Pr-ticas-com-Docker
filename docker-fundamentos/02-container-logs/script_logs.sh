docker volume create nginx_jardson
docker run -d --name meu-nginx -p 8080:80 -v nginx_jardson:/var/log/nginx nginx
curl http://localhost:8080
docker stop meu-nginx
docker rm meu-nginx

# Rodar novamente e verificar se os logs estão lá
docker run -it --rm -v nginx_jardson:/var/log/nginx alpine ls /var/log/nginx
