
  config image -> create-image ->deploy on aws


##Create image 
packer build images/template.json


##validate image
packer validate images/template.json
  
### TO-DO
- [ ] ansible fish
- [ ] git
- [ ] ngnix php mysql
- [ ] filter to ip
- [ ] create
- [x] checkead

borrar sudo rm -r /var/www/html/
permisos git clone -b MOODLE_36_STABLE git://git.moodle.org/moodle.git /var/www/html/
