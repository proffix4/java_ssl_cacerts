java --source 11 InstallCert.java data.egov.kz
keytool -exportcert -alias data.egov.kz-1 -keystore jssecacerts -storepass changeit -file data.egov.kz.cer
sudo keytool -importcert -alias data.egov.kz -cacerts -storepass changeit -file data.egov.kz.cer
keytool -list -cacerts -storepass changeit  > java_cacerts.dat
