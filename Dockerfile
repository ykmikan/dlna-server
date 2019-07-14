FROM alpine:3.10.1

# install minidlna
RUN apk --update add minidlna && rm -rf /var/cache/apk/*

# Add config file
ADD config/minidlna.conf /etc/minidlna.conf

CMD ["minidlnad", "-d"]