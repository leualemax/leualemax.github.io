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
