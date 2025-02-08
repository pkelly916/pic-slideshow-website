Notes
=====

- website was redesigned 12/22/23
- website was updated 02/07/25

# Info
functionality now consists entirely of random images every click or reload

- files are read from pics/ through a short bash script
- supports delivering pictures to a desktop or mobile form factor
- script returns a single random file from the directory
- script is called by fcgiwrap
- script is hardcoded, but called by file filter, allowing arbitrary file names
- existence of a query parameter determines mobile/desktop pictures
- nginx passes data to fcgi through fcgiwrap socket
- socket is handled by systemd service
- fcgi runs as http user, alongside nginx worker process

# Czech list
- [X] random pictures as background
- [X] randomized script name
- [X] upload to github
- [X] add mobile functionality
- [ ] ssl 
- [ ] upload more pictures

# Relevant files
```
/usr/share/nginx/www            - main website
/usr/share/nginx/www/pics       - pictures directory
/usr/share/nginx/script         - getrand.sh 
/etc/nginx/nginx.conf           - defines relevant file paths
/var/run/nginx/fcgiwrap.sock    - socket nginx uses
/usr/lib/systemd/system/fcgiwrap.service    - configure for fcgiwrap
```

# Services
```
systemctl starts nginx.service
systemctl starts fcgiwrap.service
```

