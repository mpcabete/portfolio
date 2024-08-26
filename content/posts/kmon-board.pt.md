+++
title = "Kmon Board"
date = "2024-08-22T17:49:16-03:00"
author = "Mateus Cabete"
authorTwitter = "" #do not include @
cover = "./kmon-board-list.png"
tags = ["typescript", "javascript","docker","websockets","postgress","c++"]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
+++
# ClimbLED: Revolucionando a Experiência de Boulder em Academias de Escalada

Estou empolgado em apresentar meu mais recente projeto: ClimbLED, uma solução inovadora para academias de escalada que combina tecnologia de ponta com o desafio físico e mental da escalada indoor.

## Visão Geral do Projeto

ClimbLED é um sistema interativo que transforma paredes de escalada convencionais em playgrounds digitais dinâmicos. Utilizando um painel de spray wall equipado com LEDs, o sistema permite que escaladores criem, compartilhem e experimentem problemas de boulder de forma totalmente nova.

## Características Principais

1. **Painel Interativo LED**: Uma parede de escalada equipada com LEDs controlados individualmente, que iluminam as agarras para cada problema de boulder.

2. **Criação de Problemas Personalizados**: Os usuários podem criar seus próprios problemas de boulder através de uma interface intuitiva no smartphone.

3. **Biblioteca de Problemas**: Uma coleção crescente de problemas criados pela comunidade, classificados por dificuldade e criador.

4. **Atualização em Tempo Real**: Os problemas são atualizados instantaneamente na parede, graças à comunicação em tempo real entre o servidor e o hardware.

![pagina de criação de novo desafio](./kmon-board-criar.png)

## Tecnologias Utilizadas

- **Hardware**: ESP32 como microcontrolador, fita de LED WS2811
- **Backend**: Servidor com WebSockets para comunicação em tempo real, PostgreSQL para armazenamento de dados
- **Frontend**: Aplicação web responsiva, otimizada para uso móvel
- **Comunicação**: API RESTful para gerenciamento de problemas, WebSockets para atualizações em tempo real

## Desafios e Soluções

Um dos principais desafios foi criar uma interface de usuário intuitiva que permitisse aos escaladores projetar problemas facilmente em seus smartphones. A solução foi desenvolver uma representação visual interativa da parede, onde os usuários podem simplesmente tocar para alternar o estado das agarras entre desligado, vermelho (agarras válidas) e verde (agarras iniciais).

## Impacto e Futuro

ClimbLED não apenas moderniza a experiência de escalada indoor, mas também cria uma comunidade interativa de escaladores que podem compartilhar e experimentar os desafios uns dos outros. No futuro, planejo expandir o sistema para incluir recursos como competições online, tracking de progresso pessoal e integração com wearables para análise de desempenho.

Este projeto demonstra minha capacidade de combinar hardware, software backend e frontend para criar uma solução completa e inovadora. Estou ansioso para continuar refinando e expandindo o ClimbLED, potencialmente revolucionando a forma como as pessoas experimentam a escalada indoor.
