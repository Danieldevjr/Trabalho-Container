# Etapa 1: Usar a imagem base oficial do Node.js
FROM node:18

# Etapa 2: Definir o diretório de trabalho no container
WORKDIR /usr/src/app

# Etapa 3: Copiar os arquivos da aplicação para o container
COPY package*.json ./
RUN npm install

# Copiar o restante dos arquivos da aplicação
COPY . .

# Etapa 4: Expor a porta em que a aplicação vai rodar
EXPOSE 3000

# Etapa 5: Comando para rodar a aplicação
CMD ["node", "index.js"]
