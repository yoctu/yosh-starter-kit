# Route to set for activation saml
#ROUTE['/acs':'POST':'none']='saml::retrieve::Identity'
#ROUTE['/acs':'GET':'none']='saml::retrieve::Identity'
#ROUTE['/login':'GET':'none']='saml::buildAuthnRequest'
#ROUTE['/':'GET':'connect']="html::print::out ${html_dir}/home.html"


# router="route::api::mode"
# router="route::check"

# Defaults routes
ROUTE['/login':'GET']='html::print::out ${html_dir}/login.html'
ROUTE['/login':'POST']='html::print::out ${html_dir}/login.html'
ROUTE['/':'GET']='html::print::out ${html_dir}/home.html'
ROUTE['/':'POST']='html::print::out ${html_dir}/home.html'

AUTH['/login':'GET']="none"
AUTH['/login':'POST']="none"
AUTH['/css/.*':'GET']="none"
AUTH['/img/.*':'GET']="none"
AUTH['/js/.*':'GET']="none"
AUTH['/fonts/.*':'GET']="none"
AUTH['/':'GET']="htpasswd"

LOGIN['/':'GET']="auth::custom::request"
LOGIN['/':'POST']="auth::custom::request"


#SAML Config
#ROUTE['/acs':'POST']='Saml::retrieve::Identity'
#ROUTE['/acs':'GET']='Saml::retrieve::Identity'
#ROUTE['/login':'GET']='Saml::buildAuthnRequest'
#ROUTE['/logout':'POST']='Saml::Logout'
#ROUTE['/logout':'GET']='Saml::Logout'
#ROUTE['/':'GET']="Html::print::out ${html_dir}/home.html"

#AUTH['/':'GET']="connect"
#AUTH['/acs':'POST']="none"
#AUTH['/acs':'GET']="none"

#LOGIN['/':'GET']="Auth::saml::request"
