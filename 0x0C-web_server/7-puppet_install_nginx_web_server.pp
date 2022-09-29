# Configure an Ubuntu machine (Using Puppet)

exec {'/usr/bin/env sudo apt-get -y update': }
exec {'/usr/bin/env sudo apt-get -y install nginx': }
exec {'/usr/bin/env echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html': }
exec {'/usr/bin/env sudo sed -i "/server_name _;/ a\\\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default': }
exec {'/usr/bin/env sudo sed -i "/redirect_me/ a\\\terror_page 404 /custom_404.html;" /etc/nginx/sites-available/default': }
exec {'/usr/bin/env echo "Ceci n\'est pas une page" | sudo tee /var/www/html/custom_404.html': }
exec {'/usr/bin/env sudo service nginx start': }
