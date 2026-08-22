---
title: "Segmentação de Copas de Árvores com Aprendizado de Máquina"
date: 2024-01-01
cover:
  src: cover.png
draft: false
comments: true
socialShare: true
tags:
  - ODM
  - Python
  - GeoPandas
  - Machine learning
  - QGIS
  - Geoprocessamento
  - georreferenciamento
---

Neste projeto, desenvolvi uma metodologia para individualizar copas de árvores usando imagens RGB capturadas por drone. O objetivo era criar uma solução de baixo custo e amplamente aplicável para avaliação de áreas florestais extensas.

<!--more-->

## Tecnologias Utilizadas

- Python
- detectree2 (baseado no Detectron2 do Facebook)
- OpenDroneMap (ODM)
- QGIS

## Desafios e Soluções

### Geração de Ortomosaicos

Enfrentei desafios na geração de ortomosaicos de alta qualidade. Experimentei diferentes altitudes de voo (40m, 60m, 110m) e ajustes no ODM para otimizar a resolução e minimizar distorções.
{{< figure src="./comparacao-voo.png" alt="Comparação da resolução do voo de 60m e 110m" position="center" style="border-radius: 8px;" caption="Comparação da resolução do voo de 60m e 110m" >}}

### Treinamento do Modelo


1. **Preparação de Dados**: Criei manualmente polígonos de treinamento, marcando todas as copas na área de treinamento.

{{< figure src="/treinamento.png" alt="Polígonos de treinamento (127 polígonos)" position="center" style="border-radius: 8px;" caption="Polígonos de treinamento (127 polígonos)" >}}

2. **Tiling**: Modifiquei o código do detectree2 para corrigir problemas com a sobreposição de tiles de teste e treinamento.
3. **Ajuste de Parâmetros**: Experimentei diferentes tamanhos de tiles e sobreposições para melhorar a performance do modelo.



### Validação do Modelo

Tentei correlacionar os polígonos gerados pelo modelo com dados de campo coletados anteriormente. Enfrentei desafios significativos no georreferenciamento preciso dos dados terrestres.

## Resultados

{{< figure src="/predicao.png" alt="Predição das copas no ortomosaico da borda sul da Floresta da Usp" position="center" style="border-radius: 8px;" caption="Predição das copas no ortomosaico da borda sul da Floresta da Usp" >}}

O modelo treinado com 127 polígonos da Floresta da USP demonstrou:

1. Boa generalização para diferentes áreas da floresta.
2. Desempenho inferior em imagens de escala diferente (60m vs 110m).
3. Alguns falsos positivos em áreas de grama ou solo exposto.

## Lições Aprendidas

1. A importância da qualidade e diversidade dos dados de treinamento.
2. Os desafios de georreferenciar com precisão dados de campo em ambientes florestais.
3. A necessidade de estratégias alternativas para validação de modelos em ecologia florestal.

## Próximos Passos

Propus uma nova abordagem usando balões de hélio como pontos de controle para melhorar o georreferenciamento dos dados de campo.

## Conclusão

Este projeto demonstrou o potencial e os desafios de usar aprendizado de máquina para análise de copas de árvores. Apesar dos obstáculos, a metodologia desenvolvida oferece uma base promissora para futuros avanços na avaliação de áreas florestais extensas.
