# Use uma Imagem Official do Node
FROM node

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /frontend

# Copiar os arquivos da pasta local para dentro do container
COPY . /frontend

# Instalar as dependências do Node
RUN npm install && npm run build

ARG INTERNAL_PORT=8080

ENV PORT=$INTERNAL_PORT
ENV REACT_APP_BACKEND_URL=

EXPOSE $INTERNAL_PORT

# Garante que será iniciado a aplicação.
CMD npm run start