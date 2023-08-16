# Menggunakan base image Node.js versi 14
FROM node:14-alpine3.17

# Install tambahan yg mungkin dibutuhkan
RUN apk add --no-cache python3 g++ make

# Menentukan bahwa working directory untuk container adalah /app.
WORKDIR /app

# Menyalin seluruh source code ke working directory di container.
COPY . .

# Aplikasi dalam production mode dg container item-db sebagai database.
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi.
RUN yarn install --production && npm run build

# Ekspos port aplikasi 8080.
EXPOSE 8080

# Jalankan server dengan perintah npm start.
CMD ["npm","start"]
