declare -A SAML

SAML['spurl']="https://connect.test.flash.global"
SAML['authtemplate']="${DOCUMENT_ROOT%/}/../config/saml/template/auth.xml"
SAML['idpxmlurl']="https://connect-idp.test.flash.global/idp.xml"
SAML['idpxml']="$(tmpFile="$(mktemp)"; curl -s -o $tmpFile ${SAML['idpxmlurl']}; echo "$tmpFile")"
SAML['privkey']="${etc_conf_dir%/}/saml/idp/key/priv.key"
SAML['logoutresponsexml']="${DOCUMENT_ROOT%/}/../config/saml/template/logoutresponse.xml"
SAML['logoutrequestxml']="${DOCUMENT_ROOT%/}/../config/saml/template/logoutrequest.xml"
