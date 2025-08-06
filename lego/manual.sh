

# root@server:~/lego# tree .lego
# .lego
# ├── accounts
# │   └── acme-v02.api.letsencrypt.org
# │       └── xxxxxxxxxx@gmail.com
# │           ├── account.json
# │           └── keys
# │               └── twalsworth@gmail.com.key
# ├── certificates
# │   ├── landingdev.xyz.crt
# │   ├── landingdev.xyz.issuer.crt
# │   ├── landingdev.xyz.json
# │   ├── landingdev.xyz.key
# │   └── landingdev.xyz.pem
# └── gen_keys.sh
# 
# COPY the certifcates foldeer from the ".lego" directory to a new "certs" directory
# cp -fr .lego/certificates .
# 
# .
# ├── certs
# │   ├── landingdev.xyz.crt
# │   ├── landingdev.xyz.issuer.crt
# │   ├── landingdev.xyz.json
# │   ├── landingdev.xyz.key
# │   └── landingdev.xyz.pem
# ├── get-lego.sh
# ├── lego
# └── manual.sh

# 
# STEP 1:
# RUN "get-lego.sh" to install "lego"
# 
# STEP 2:
# RUN
./lego -a --pem --email "xxxxxxxxx@gmail.com" --domains "landingdev.xyz" --domains "*.landingdev.xyz" --dns manual run
# 
# STEP 3:
# COPY the "certifcates" folder  from the ".lego" directory to a new "certs" directory
# cp -fr .lego/certificates/ certs

# STEP 4:
# OPEN URL https://toolbox.googleapps.com/apps/dig/#TXT/
# and enter 
# _acme-challenge.landingdev.xyz.
#
# verify TXT value matches what was entered in the DNS from LEGO "sOQf--------------------UnKbcE"
