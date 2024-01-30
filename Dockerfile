# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Menentukan bahwa working directory untuk container adalah /app.
WORKDIR /app

# Menyalin seluruh source code ke working directory di container.
COPY . .

# Menginstal node menggunakan npm
RUN npm install

# Environment variabel URL Rabbitmq
ENV AMQP_URL="amqp://rabbitmq:5672"

# Ekspos port 3000 untuk shipping-service
EXPOSE 3001

# Jalankan shipping-service (index.js)
CMD ["node", "index.js"]
