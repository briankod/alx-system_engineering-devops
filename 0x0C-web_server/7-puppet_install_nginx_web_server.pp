# Configure an Ubuntu machine (Using Puppet)

exec {'/usr/bin/env sudo apt update': }
exec {'/usr/bin/env sudo apt install nginx': }
exec {'/usr/bin/env sudo service nginx start': }
exec {'/usr/bin/env echo "echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html  > /dev/tty1': }
exec {'/usr/bin/env sed -i "/server_name _;/ a\\\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default': }
exec {'/usr/bin/env echo "Ceci n'est pas une page" | sudo tee /var/www/html/custom_404.html  > /dev/tty1': }
exec {'/usr/bin/env sed -i "/server_name _;/ a\\\terror_page 404 /custom_404.html;" /etc/nginx/sites-available/default': }
exec {'/usr/bin/env sudo service nginx restart': }
