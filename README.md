# 🧪 Aplicativo de Monitoramento de Clima

## 📌 Objetivo

Desenvolver um aplicativo mobile que permita ao usuário monitorar o clima de múltiplas cidades utilizando a API pública **WeatherAPI** ([https://www.weatherapi.com/](https://www.weatherapi.com/)).

O aplicativo deverá exibir:

- 📍 Clima atual da cidade
    
- 📅 Previsão para os próximos 7 dias (incluindo o dia atual)
    
- 🕰 Histórico do clima da mesma data, porém de **1 ano atrás**

---

## 🌎 Contexto

O usuário poderá adicionar **quantas cidades desejar** para monitoramento.  
Cada cidade adicionada será exibida em uma lista ou dashboard, contendo suas respectivas informações climáticas. Para acessar o "histórico do clima", criar uma tela adicional e navegar para ela.

---

## 📱 Requisitos Funcionais

### 1️⃣ Cadastro e Gerenciamento de Cidades

- O usuário poderá:
    
    - Adicionar uma cidade pelo nome
        
    - Remover uma cidade da lista
        
    - Visualizar todas as cidades cadastradas
        
- Não deve permitir duplicidade de cidades

---

### 2️⃣ Exibição do Clima Atual

Para cada cidade cadastrada, exibir:

- Temperatura atual
    
- Condição climática (ex: Ensolarado, Nublado)
    
- Umidade
    
- Velocidade do vento
    
- Ícone representativo do clima

---

### 3️⃣ Previsão para 7 Dias

Exibir para cada cidade:

- Temperatura mínima e máxima por dia
    
- Condição climática
    
- Probabilidade de chuva
    
- Ícone do clima

---

### 4️⃣ Histórico do Mesmo Dia (1 Ano Antes)

Para cada cidade, exibir também:

- Clima da mesma data do ano anterior
    
- Temperatura média
    
- Condição climática
    
- Ícone correspondente

Exemplo:  
Se hoje for 10/02/2026 → buscar dados de 10/02/2025

---

## ⚙️ Requisitos Não Funcionais

- Código organizado e estruturado
    
- Uso de "boas práticas" de arquitetura 
    
- Tratamento adequado de erros (cidade inválida, falha de rede, etc.)
    
- Loading state durante requisições
    
- Persistência local das cidades adicionadas
    
- Interface responsiva e intuitiva
    
- Testes unitários (mínimo desejável)

---

## 🏗 Tecnologias Sugeridas

Você pode escolher livremente a stack, mas sugerimos:

- **iOS:** Swift + SwiftUI ou UIKit
    
- **Android:** Kotlin + Compose ou XML
    
- **Multiplataforma:** Flutter
    
- **Gerenciamento de estado:** livre escolha
    
- **Persistência:** SharedPreferences, UserDefaults, Room, Hive ou similar

---

## 🎨 Diferenciais (Não Obrigatórios)

- Geolocalização automática
    
- Cache inteligente das requisições
    
- Pull-to-refresh
    
- Dark mode
    
- Testes instrumentados/UI
    
- Arquitetura escalável e desacoplada
    
- Uso de injeção de dependência
    
- CI/CD configurado
    
- Documentação de decisões técnicas

---

## 🧪 Critérios de Avaliação

|Critério|Peso Avaliativo|
|---|---|
|Organização e qualidade do código|⭐⭐⭐⭐|
|Estrutura de arquitetura|⭐⭐⭐⭐|
|Experiência do usuário (UX)|⭐⭐⭐|
|Tratamento de erros|⭐⭐⭐|
|Testes automatizados|⭐⭐⭐|
|Boas práticas (SOLID, Clean Code)|⭐⭐⭐⭐|

---

## 📦 Entregáveis

O que deverá fornecer:

1. Fork deste reposistório e mandar o Pull Request de volta (Preferencial), repositório público (GitHub ou similar) ou privado (me adicione no repositório)
    
2. README contendo:
    
    - Instruções para rodar o projeto
        
    - Tecnologias utilizadas
        
    - Decisões arquiteturais
        
    - Pontos de melhoria futuros
        
3. Prints ou vídeo demonstrando funcionamento (opcional)

---

## 🧠 O que é importante considerar

- Organização
    
- Clareza
    
- Capacidade de estruturar solução
    
- Qualidade técnica
    
- "Boas práticas" de engenharia

---

## 🔐 Observação Importante

A chave da API deve ser armazenada de forma segura e **não deve ser commitada diretamente no repositório público**.
