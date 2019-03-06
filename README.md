# Yosh Starter Kit

## Install Yosh

```
wget -qO - https://ppa.yoctu.com/archive.key | sudo apt-key add -
sudo add-apt-repository "deb https://ppa-public.yoctu.com/ all stable" 
sudo apt-get update
sudo apt-get install yosh
```

## Git Clone Repo

```
cd /var/www/html 
git clone https://github.com/yoctu/yosh-starter-kit

```

## Configure Apache

### enable cgi module

```
sudo a2enmod cgid && sudo service apache2 restart

```

### add vhost

```
    define documentroot YOUR/DOCUMENTROOT

    DocumentRoot ${documentroot}

    <Directory ${documentroot}>

        Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch 

        AddHandler cgi-script .sh

        RewriteEngine On
            RewriteCond %{REQUEST_FILENAME} -s [OR]
            RewriteCond %{REQUEST_FILENAME} -l [OR]
            RewriteCond %{REQUEST_FILENAME} -d
            RewriteRule ^.*$ - [NC,L]
            RewriteRule ^.*$ /main.sh [NC,L]

        DirectoryIndex main.sh

    </Directory>

    undefine documentroot
```

