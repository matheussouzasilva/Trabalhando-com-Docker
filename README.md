# Docker + Go 

Esse repostório demonstra minha primeira interação real com docker e container rodando no win com wsl 

Coisa simples, mas um bom inicio.

## Como executar (Usando PowerShell conectado no WSL:Ubuntu)

1. Build da imagem:
    
   docker build -t go-imagem .

2. Subir(run) e Derrubar(rm) o container:

   docker run --rm go-imagem

3. resultado esperado:

   A imagem funcionou!

   ou

   O jogo da vida de Conway 
   
   (código disponibilizado pela https://go.dev/) 

