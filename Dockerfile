FROM node:16-alpine as base
WORKDIR /app
# COPY /package*json ormconfig.ts ./
# COPY ["package*.json","README.md","./"]
COPY package*.json .
RUN npm install -f
COPY . . 
# ENV SHUVRO=name
EXPOSE 3000
RUN npm run build
CMD ["node","dist/src/main.js"]