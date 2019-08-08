
  config image -> create-image ->deploy on aws

##Create image 
ssh -T git@github.com
packer build images/template.json

##validate image
packer validate images/template.json
##deploy 
copy ami from image and update template.json
cd deploy
terraform apply main.tf
### TO-DO
[] /etc/php/7.2/fpm/php.ini post_max_size upload_max_filesize
[] install fish
[] cert bot
[] ngnix config /etc/nginx/sites-enabled/default client_max_body_size 100M;
