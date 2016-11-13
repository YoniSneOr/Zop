FROM google/nodejs
# Add source
ADD ./node_modules /opt/zop/node_modules
ADD . /opt/zop

WORKDIR /opt/zop


# Install Git
RUN echo 'Acquire::http::Proxy "http://web-proxy.il.hpecorp.net:8080";' > /etc/apt/apt.conf && \
    echo 'Acquire::http::Proxy "http://web-proxy.il.hpecorp.net:8080";' > /etc/apt/apt.conf && \
    apt-get update && \
    apt-get install -y git


# Install app deps
RUN npm install

CMD ["npm", "start"]
