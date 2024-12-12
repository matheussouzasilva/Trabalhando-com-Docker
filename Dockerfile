# Usar a imagem base do Golang
FROM golang:1.20

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar os arquivos de módulos primeiro
COPY go.mod go.sum ./

# Baixar dependências
RUN go mod download

# Copiar o restante dos arquivos
COPY . .

# Construir o executável
RUN go build -o main .

# Comando padrão para rodar o container
CMD ["./main"]