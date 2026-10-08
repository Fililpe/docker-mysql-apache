# Imagem base pedida na atividade
FROM debian:trixie

LABEL maintainer="Luiz Filipe <lfsjs@cesar.school>"

# Instala o Apache e limpa o cache do apt na mesma camada
RUN apt-get update \
    && apt-get install -y --no-install-recommends apache2 \
    && rm -rf /var/lib/apt/lists/*

# ADD extrai o .tar automaticamente dentro da pasta do Apache
ADD meu_site.tar /var/www/html/

# Porta em que o Apache escuta
EXPOSE 80

# Mantem o Apache em primeiro plano para o container nao encerrar
CMD ["apachectl", "-D", "FOREGROUND"]
