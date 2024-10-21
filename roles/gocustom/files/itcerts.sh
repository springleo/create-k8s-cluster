#!/bin/bash

#Varible Declaration
rCertsPath="/etc/pki/ca-trust/source/anchors"
aRootCA="http://companyitserverca2.company.com/pki/companyitrootca2.crt"
aServerCA="http://companyitserverca2.company.com/pki/companyitserverca2.crt"
aZscaler="http://itcrl.company.com/pki/ZscalerRootCertificate-2048-SHA256.crt"

RedHat() {
     echo -e "Downloading company IT root CA Certificate under $rCertsPath directory\n"
     curl -f $aRootCA -o $rCertsPath/companyITrootCA2.crt || exit 1
     echo -e "Downloading company IT Server CA Certificate under $rCertsPath directory\n"
     curl -f $aServerCA -o $rCertsPath/companyITserverCA2.crt || exit 1
     echo -e "Downloading company IT Zscalar Certifiate under $rCertsPath directory\n"
     curl -f $aZscaler -o $rCertsPath/Zscaler.crt || exit 1
     echo -e "Installing the certificates...\n\n"
     update-ca-trust
     echo -e "Congrats. Certificates are installed successfully!!\n\n"
}

# Call the function
RedHat
