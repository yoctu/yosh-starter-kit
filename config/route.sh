ROUTE['/':'GET':'']="html::print::out ${html_dir}/home.html"
ROUTE['/toto':'GET']="echo haha"
ROUTE['/toto':'POST']='echo ${POST["lavé"]}'
