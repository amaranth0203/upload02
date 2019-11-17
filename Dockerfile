FROM amaranth0203/upload01

ENV LC_ALL C.UTF-8
ENV TZ=Asia/Shanghai

COPY . /tmp/

# install upload-labs and flag
RUN cd /tmp/ &&\
    mv /tmp/upload-labs/* /var/www/html/ &&\
    rm -rf /tmp/*

EXPOSE 80