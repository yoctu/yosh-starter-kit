
# For Saml Auth
# Route to set for activation saml
ROUTE['/acs':'POST']='Saml::retrieve::Identity'
ROUTE['/acs':'GET']='Saml::retrieve::Identity'
ROUTE['/login':'GET']='Saml::buildAuthnRequest'
ROUTE['/login':'POST']="Saml::buildAuthnRequest"
ROUTE['/logout':'POST']='Saml::Logout'
ROUTE['/logout':'GET']='Saml::Logout'
ROUTE['/':'GET']="Html::print::out index.html"

AUTH['/':'GET']="connect"
AUTH['/':'POST']="connect"
AUTH['/acs':'POST']="none"
AUTH['/acs':'GET']="none"
AUTH['/logout':'GET']="none"
AUTH['/logout':'POST']="none"

LOGIN['/':'GET']="Auth::saml::request"
LOGIN['/':'POST']="Auth::saml::request"
