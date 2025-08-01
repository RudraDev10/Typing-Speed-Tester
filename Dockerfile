# ✅ Use official Node.js v22 base image
FROM node:22

# ✅ Create app directory inside container
WORKDIR /app

# ✅ Copy package.json and package-lock.json
COPY package*.json ./

# ✅ Install app dependencies
RUN npm install

# ✅ Copy all remaining source code
COPY . .

# ✅ Expose the port your app runs on
EXPOSE 3000

# ✅ Run the application
CMD ["node", "server.js"]
