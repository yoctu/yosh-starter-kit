declare -A SAML

SAML['spurl']="HOST"
SAML['authtemplate']="${DOCUMENT_ROOT%/}/../config/saml/template/auth.xml"
SAML['idpxmlurl']="IDPXMLURL"
SAML['idpxml']="$(tmpFile="$(mktemp)"; curl -s -o $tmpFile ${SAML['idpxmlurl']}; echo "$tmpFile")"
SAML['privkey']="${etc_conf_dir%/}/saml/idp/key/priv.key"
SAML['logoutresponsexml']="${DOCUMENT_ROOT%/}/../config/saml/template/logoutresponse.xml"
SAML['logoutrequestxml']="${DOCUMENT_ROOT%/}/../config/saml/template/logoutrequest.xml"
