shopt -s extglob
shopt -s nullglob

for projectlist in /var/www/!(html|cgi-bin); do 

    project=$(dpkg -l | grep " ${projectlist##*/}" | awk '{ print $2 }')
    
    [[ -z $project ]] && continue

echo $project
    echo "$project install" | sudo dpkg --set-selections

    sudo apt-get update &>/dev/null || return

    cd /var/lib/esm/packages

    sudo apt download $project &>/dev/null

    sudo apt-get install --only-upgrade -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -o Dpkg::Options::="--force-confmiss" --force-yes -y $project &>/dev/null || return

    if [ $project != "esm" ]; then 
        echo "$project hold" | sudo dpkg --set-selections
    fi

done
