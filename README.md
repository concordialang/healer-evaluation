# Concordialang Healer Evaluation

Este repositório contém os resultados coletados durante a avaliação da ferramenta [`concordialang-healer`](https://github.com/concordialang/healer).

A avaliação teve por objetivo:

1. Estabelecer a eficácia da ferramenta com as configurações padrão.
2. Estabelecer uma média dos _scores_ gerados pelas heurísticas.

## Mutantes

Para realizar a avaliação, definimos um conjunto de operadores de mutação:

| Operadores de Mutação        |
| ---------------------------- |
| 1. Adicionar atributo        |
| 2. Remover atributo          |
| 3. Alterar atributo          |
| 4. Inserir antes             |
| 5. Inserir depois            |
| 6. Inserir antes do pai      |
| 7. Inserir depois do pai     |
| 8. Remover anterior          |
| 9. Remover posterior         |
| 10. Remover anterior ao pai  |
| 11. Remover posterior ao pai |
| 12. Mover para cima          |
| 13. Mover para baixo         |
| 14. Mover pai para cima      |
| 15. Mover pai para baixo     |
| 16. Inserir conteúdo         |
| 17. Excluir conteúdo         |
| 18. Alterar conteúdo         |

## Aplicações testadas

Para aplicar o conjunto de mutantes, escolhemos as seguintes aplicações:

- [Warehouse Inventory System](https://github.com/siamon123/warehouse-inventory-system)

- [Sauce Labs Sample Application](https://github.com/saucelabs/sample-app-web)

- [The Internet](https://github.com/saucelabs/the-internet)

### Funcionalidades testadas

Para cada aplicação, selecionamos algumas funcionalidades e para cada funcionalidade selecionamos alguns elementos para a inserção dos mutantes. As funcionalidades selecionadas foram:

#### Warehouse Inventory System

1. Login
2. Add Category
3. Add Product

#### Sauce Labs Sample Application

1. Login
2. Sort Products
3. Checkout

#### The Internet

1. Login
2. Drag and Drop
3. Context Menu
4. Frames
5. Upload

## Organização das pastas

Nas pastas do repositório podemos encontrar:

### Worksheets

As planilhas geradas para a avaliação das ferramentas, com todos os dados coletados durante o processo.

Utilizamos o **Google Sheets** para a avaliação. Sendo assim, geramos versão para **Excel**, **Libre Office** e um arquivo **PDF**.

### Features

As especificações de requisitos de cada feature das aplicações testadas escrita em linguagem Concordia.

Utilizamos a versão em Inglês da linguagem Concordia.

### Charts

Os gráficos gerados a partir dos dados coletados nas avaliações.

### UI Screenshots

As capturas de tela de cada uma das funcionalidades avaliadas.

### UI HTML Source

O HTML de cada uma das funcionalidades avaliadas.

O código em HTML das funcionalidades foram obtidos direto do navegador web durante a avalição, tendo em vista que nenhuma das aplicações possui o código fonte em HTML.

## Isso é tudo pessoal!

Qualquer dúvida, publique uma _issue_ em https://github.com/concordialang/healer-evaluation/issuess.

Obrigado e até mais! 👋
