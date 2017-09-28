FROM node:10
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "npm-shrinkwrap.json*","install.bash", "./"]
RUN chmod 777 install.bash 
RUN ./install.bash
RUN sudo npm install -g luminati-io/luminati-proxy
RUN npm install --production  #&& mv node_modules ../
COPY . .
EXPOSE 3000
ENTRYPOINT luminati