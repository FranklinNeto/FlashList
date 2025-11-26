# FlashList

> **Economize tempo e dinheiro no supermercado.**

O **FlashList** é um aplicativo iOS que automatiza a criação de listas de compras domésticas. Através de um questionário rápido e inteligente, o app entende o perfil de consumo do usuário e gera uma lista personalizada, completa com uma estimativa de orçamento.

## Sobre o Projeto

Fazer lista de compras é uma tarefa repetitiva e que consome tempo. O FlashList resolve isso identificando padrões de consumo. Ao responder poucas perguntas sobre a rotina da casa, o usuário recebe uma lista pronta, evitando o esquecimento de itens essenciais e ajudando no controle financeiro prevendo o quanto será gasto.

## Funcionalidades Principais

* **Questionário Inteligente:** Um fluxo de perguntas simples (`QuestionView`) para definir o perfil da compra.
* **Geração Automática de Lista:** Criação instantânea da lista de produtos baseada nas respostas (`CreatedList`).
* **Orçamento Estimado:** Cálculo automático do valor médio da compra com base nos itens sugeridos.
* **Onboarding Intuitivo:** Explicação clara da proposta de valor ("Comprar tempo") logo no início.

## Tecnologias e Arquitetura

O projeto foi desenvolvido nativamente utilizando **Swift** e **SwiftUI**, seguindo o padrão de arquitetura **MVVM (Model-View-ViewModel)** para garantir a separação de responsabilidades e facilidade de testes.

* **View:** Camada de interface do usuário construída puramente em SwiftUI (ex: `TabView`, `QuestionView`).
* **ViewModel:** Gerenciamento de estado e lógica de negócios, como o `QuizViewModel`, que processa as respostas e gera os resultados.
* **Model:** Estruturas de dados que representam os itens e questões (`Item`, `ProductModel`, `QuestionModel`).

## Estrutura de Pastas

* `View/`: Contém todas as telas e componentes visuais (Onboard, QuestionView, CreatedList).
* `Controller/`: Contém as ViewModels (lógica do Quiz).
* `Model/`: Contém as definições de dados (Produto, Questão).
* `Assets.xcassets/`: Imagens, ícones e conjuntos de cores do app.

## Como Rodar o Projeto

### Pré-requisitos
* Mac com Xcode instalado (versão 13+ recomendada).
* iOS 15.0+ como target.

### Passos
1.  Clone este repositório:
    ```bash
    git clone [https://github.com/seu-usuario/FlashList.git](https://github.com/seu-usuario/FlashList.git)
    ```
2.  Navegue até a pasta do projeto.
3.  Abra o arquivo `challenge-4.xcodeproj` no Xcode.
4.  Aguarde o carregamento e indexação dos arquivos.
5.  Selecione um simulador (ex: iPhone 14/15).
6.  Pressione `Cmd + R` para compilar e rodar.


## Autores

* **Franklin Ferreira Rezende Neto**
* **Isadora Cristina Farias Bastos**
* **Thales Araújo de Souza**
