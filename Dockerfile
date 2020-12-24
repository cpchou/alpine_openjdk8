FROM cpchou/alpine_jdk8
# RUN set -ex && \
#    apk update && \
#    apk -U upgrade

# RUN echo "-----BEGIN PUBLIC KEY-----" > /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApZ2u1KJKUu/fW4A25y9m" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "y70AGEa/J3Wi5ibNVGNn1gT1r0VfgeWd0pUybS4UmcHdiNzxJPgoWQhV2SSW1JYu" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "tOqKZF5QSN6X937PTUpNBjUvLtTQ1ve1fp39uf/lEXPpFpOPL88LKnDBgbh7wkCp" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "m2KzLVGChf83MS0ShL6G9EQIAUxLm99VpgRjwqTQ/KfzGtpke1wqws4au0Ab4qPY" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "KXvMLSPLUp7cfulWvhmZSegr5AdhNw5KNizPqCJT8ZrGvgHypXyiFvvAH5YRtSsc" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "Zvo9GI2e2MaZyo9/lvb+LbLEJZKEQckqRj4P26gmASrZEPStwc+yqy1ShHLA0j6m" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "1QIDAQAB" >> /etc/apk/keys/sgerrand.rsa.pub
# RUN echo "-----END PUBLIC KEY-----" >> /etc/apk/keys/sgerrand.rsa.pub

# RUN pwd
# RUN echo "zh_TW" > /locale.md
#RUN echo "en_US" >> /locale.md

# RUN apk --no-cache add ca-certificates wget && \
#    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk && \
#    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-bin-2.25-r0.apk && \
#    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-i18n-2.25-r0.apk
    
RUN apk --allow-untrusted add glibc-2.25-r0.apk   
RUN apk --allow-untrusted add glibc-bin-2.25-r0.apk
RUN apk --allow-untrusted add glibc-i18n-2.25-r0.apk
RUN cat /locale.md | xargs -i /usr/glibc-compat/bin/localedef -i {} -f UTF-8 {}.UTF-8	

RUN pwd
