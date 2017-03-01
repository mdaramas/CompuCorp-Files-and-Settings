This tar file includes all the account info plus the certificates.
In order to extract it correctly, you need to copy the tarfile as root user under the / folder and then extract it (tar zxf letsencrypt-incl-keys.tar.gz).
After the extraction, tarfile can be removed from the / folder.