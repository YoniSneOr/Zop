FROM google/nodejs
# Add source
ADD ./node_modules /opt/zop/node_modules
ADD . /opt/zop

WORKDIR /opt/zop




# Install app deps
RUN npm install

CMD ["npm", "start"]
