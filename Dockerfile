# Imagem base Node
FROM node:20-alpine

# Diretório de trabalho
WORKDIR /usr/src/app

# Copia package.json e instala dependências
COPY package*.json ./
RUN npm install

# Copia o restante do código
COPY . .

# Expõe a porta do NestJS
EXPOSE 3000

# Comando padrão
CMD ["npm", "run", "start:dev"]
