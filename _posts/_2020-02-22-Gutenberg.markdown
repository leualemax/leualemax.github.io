---
layout: post
title: "Gutenberg não printou essa."
date: 2019-02-22 20:55:30 -0300
categories: article
comments: true
---

> Com as redes sociais, a nossa capacidade de criar e publicar conteúdo é quase infinita, porém ao mesmo tempo, elas limitam o formato e o alcance desse conteúdo.
>
> A internet não foi feita para ter limites.
>
> Programação é uma habilidade necessária hoje em dia, muitas vezes proibitiva e de difícil acesso muitas vezes não sendo uma opção válida.

## Onde estaria o meio termo?

Jekyll é uma gem feita em ruby que pode ser instalada em qualquer sistema. Ele permite qualquer pessoa, mesmo com pouco conhecimento em linguagens de programação, criar, manter e publicar um site.

> gems são pedaços de código feitos em ruby com a intenção de serem facilmente distribuídos.

> Ruby é uma linguagem de programação.

Jekyll não usa banco de dados, ao invés disso, ele gerencia arquivos locais do tipo .md (Markdown), gerando todo o conteúdo do seu site a partir desses arquivos no momento da publicação. Como o seu site será uma seria de arquivos estáticos, hospedar, servir e consultar esses arquivos é bem barato, em vários casos ate de graça.

Markdown é uma linguagem de marcação bem simples porem bem poderosa, com ela você consegue fazer todas as demarcações necessárias para formatar seu texto.

## Hoje vamos aprender `jekyll` e `Markdown`.

![https://twitter.com/JimLee](https://pbs.twimg.com/media/DiKxsSHU8AAq6rL.jpg)

### O que vamos precisar?

#### Um pouquinho de git.

`Jekyll` usa git para gerenciar as versões de seus documentos, além disso vamos usar o `github pages` para publicar gratuitamente nosso site, por isso vamos ter que saber um pouco de git.

> Caso você não saiba comandos básicos como pull e push, recomendo esse tutorial guiado gratuito feito pela codeacademy: https://www.codecademy.com/learn/learn-git

#### Ruby instalado em sua maquina.

Não vamos programar nada em ruby, porém precisamos do ruby no minimo na versão `2.4.0` instalado para rodar o `Jekyll`.

> Para saber se você tem o ruby instalado, ou instala-lo siga o tutorial: https://www.ruby-lang.org/pt/documentation/installation/

> Macs já vem com o ruby instalado por default.

> Para ter certeza abra um terminal e digite `ruby -v` aperte `enter`, o resultado deve ser algo parecido com isso: `ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]`

## Vamos começar com um repositório git! 

precisamos criar um repositório no github, é simples e fácil, cria uma conta gratuita caso não tenha e entre [nesse link](https://github.com/new):

![Github repository](/assets/screen-git-hub-1.png)

> O nome do seu repositório vai ser o nome do seu subdomínio gratis, então escolha um nome bem maneiro e siga ele de `github.io`, assim o github já sabe o que fazer!

> marque o box que diz 'initialize this repository', assim o github já cria um arquivo em seu novo repositório para facilitar as coisas.

Agora vamos clonar o seu repositório em sua maquina, com o cliente git instalado ([guia para a instalação](https://git-scm.com/book/pt-br/v1/Primeiros-passos-Instalando-Git)).

Abra um terminal e digite:


```js
git clone url_repositorio
```

![Github repository](/assets/screen-git-hub-2.png)

esse comando ira clonar os arquivos do seu repositório em uma pasta com o nome dele em sua maquina, para prosseguir entre no terminal na pasta em que o seu projeto foi clonado. 

```js
cd nome_repositorio
```

![Somente um arquivo](/assets/terminal-1.png)

esta pasta deve conter apenas um arquivo README.md que foi criado pelo github. 


## Agora vamos ao `Jekyll`

Dentro da pasta do seu repositório, rode o comando abaixo para criar o seu novo site! 

```
jekyll new . --force
```

este comando deve criar a seguinte extrutura de pastas na sua maquina:

![Pastas](/assets/folders-1.png)

Com isso já é possivel rodar seu site, para isso basta rodar o comando abaixo na pasta do seu repositório: 

```
jekyll server --livereload
```

![Navegador com o seu site](/assets/navegador-1.png)

## Configurações 

O `jekyll` possui um arquivo de configuraçao no formato .yml que fica na raiz do projeto e chama `_config.yml` nele o thema do seu site consegue pegar pegar informaçoes suas para montar seu site. 

Vamos mudar algumas como: 

```yml
title: Your awesome title
email: your-email@example.com
description: >- # this means to ignore newlines until "baseurl:"
  Write an awesome description for your new site here. You can edit this
  line in _config.yml. It will appear in your document head meta (for
  Google search results) and in your feed.xml site description.
twitter_username: jekyllrb
github_username: jekyll
```

para:

```yml
title: Shiny Eureka!
email: shiny@euraka.com
description: >- 
  This is my awesome new site made with jekyll! 
twitter_username: leualemax
github_username: leualemax
```

> toda a vez que você muda esse arquivo deve para e começar novamente o servidor do jekyll. 


# Paginas em `Markdown`

Jekyll permite você criar paginas estaticas usando `Markdown`, para isso basta criar um arquivo do tipo .md novo dentro da raiz do seu projeto, o jekyll cuida de criar os arquivos para essa pagina, e o thema cuida de lista-la no menu principal. 

Para demostrar a funcionalidade criei um arquivo dentro do projeto chamado pagina.md, nele coloquei o seguinte conteudo: 

```md
---
layout: page
title: Minha Nova Pagina
permalink: /pagina/
---

Essa é a minha pagina nova dentro do jekyll

```

basta salva-lo que o nevegador deve refreshar automaticamente e mostrar a pagina nova: 

![Navegador com o seu site](/assets/navegador-2.png)


O `Jekyll` usa o cabeçalho desse arquivo para montar a sua pagina, e o conteudo é transcrito para o html. 

> o formato do conteudo segue o padrão markdown, segue uma [lista de todos os padrões que podem ser utilizados com md](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). 


```md
---
layout: page
title: Minha Nova Pagina
permalink: /pagina/
---

## este é um titulo para minha pagina. 
### este é um subtitulo

Assim é o paragrafo estático, que pode contar o quanto de texto você quiser. 

esse é um novo paragrafo. 

> aqui é um texto de observação 

![esta é a imagem de um peixinho](http://s2.glbimg.com/YKEKlH00DIPoAv2MfvH3KDlMm8g=/s.glbimg.com/jo/g1/f/original/2015/05/16/peixinho-dourado.jpg) 

```

![Navegador com o seu site](/assets/navegador-3.png)