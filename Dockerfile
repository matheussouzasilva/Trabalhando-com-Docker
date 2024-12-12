# Usar a imagem base do Go
FROM golang:1.20

# Definir o diretório de trabalho do container
WORKDIR /app

# Copiar os arquivos de módulos primeiro
COPY go.mod go.sum ./

    #go.sum(Esse é um aquivo vazio, mas obrigatório para conseguir compilar)

# Baixar dependências
RUN go mod download

# Copiar todo o restante dos arquivos
COPY . .

# Construir o main.go
RUN go build -o main .

CMD ["./main"]