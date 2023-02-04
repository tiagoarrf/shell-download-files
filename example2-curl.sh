#!/bin/bash

uri=$1
ext=$2

curl -sL "$uri" > page.html

links=$(grep -Eo "<a.*href.*$ext.*>" page.html | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*")

for link in $links; do
  curl -sLJO "$link"
done

# Remover o arquivo temporário da página
rm page.html


#or

#!/bin/bash

uri=$1
ext=$2

# Baixar a página
curl -sL "$uri" > page.html

# Encontrar todos os links com a extensão desejada
links=$(grep -Eo "<a.*href.*$ext.*>" page.html | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*")

# Baixar cada arquivo
for link in $links; do
  filename=$(echo "$link" | grep -Eo "[^/]+$")
  curl -sLJO "$link" -o "$filename"
done

# Remover o arquivo temporário da página
rm page.html


# obs: links=$(grep -Eo "<a.*href.*$ext.*>" page.html | grep -Eo "[a-zA-Z0-9./?=_-]*" | grep -E "*.$ext")
