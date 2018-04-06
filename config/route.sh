# Route to set for activation saml
#ROUTE['/acs':'POST':'none']='saml::retrieve::Identity'
#ROUTE['/acs':'GET':'none']='saml::retrieve::Identity'
#ROUTE['/login':'GET':'none']='saml::buildAuthnRequest'
#ROUTE['/':'GET':'connect']="html::print::out ${html_dir}/home.html"


# router="route::api::mode"
# router="route::check"
router="route::check"

# Defaults routes
ROUTE['/login':'GET']='html::print::out ${html_dir}/login.html'
ROUTE['/login':'POST']='html::print::out ${html_dir}/login.html'
ROUTE['/css/.*':'GET']='css::print::out ${uri#*/}'
ROUTE['/img/.*':'GET']='img::print::out ${uri#*/}'
ROUTE['/js/.*':'GET':]='js::print::out ${uri#*/}'
ROUTE['/fonts/.*':'GET']='fonts::print::out ${uri#*/}'
ROUTE['/':'GET']='html::print::out ${html_dir}/home.html'
ROUTE['/':'POST']='html::print::out ${html_dir}/home.html'

AUTH['/login':'GET']="none"
AUTH['/login':'POST']="none"
AUTH['/css/.*':'GET']="none"
AUTH['/img/.*':'GET']="none"
AUTH['/js/.*':'GET']="none"
AUTH['/fonts/.*':'GET']="none"
AUTH['/':'GET']="htpasswd"
AUTH['/':'POST']="htpasswd"
