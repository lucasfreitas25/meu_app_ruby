# 📚 Sistema de Pesquisa de Termos – Mettzer

Este é um sistema de pesquisa de notícias desenvolvido para a empresa **Mettzer**, permitindo que usuários pesquisem termos específicos por meio de integração com a API da NewsAPI, além de salvar e gerenciar artigos favoritos.

---

## 🔧 Tecnologias Utilizadas

- **Ruby**: 3.4.4  
- **Ruby on Rails**: 8.0.2  
- **Banco de Dados**: PostgreSQL  
- **API de Notícias**: [NewsAPI](https://newsapi.org/)  

---

## ⚙️ Instalação e Configuração

Siga os passos abaixo para executar o projeto localmente:

### 1. Clonar o repositório
```bash
git clone https://github.com/lucas_freitas25/meu_app.git
cd meu_app
```

### 2. Instalar dependências
```bash
bundle install
```

### 3. Criar e migrar o banco de dados
```bash
rails db:create
rails db:migrate
```

### 4. Gerar chaves de API
- Registre-se em [NewsAPI.org](https://newsapi.org/register)
- Salve sua chave no arquivo `config/application.yml` ou `credentials`

---

## 📁 Estrutura de Geração

### Comandos utilizados:
```bash
rails new meu_app -d postgresql
rails generate controller Pages login register principal
rails generate controller Users new create
rails generate controller Sessions new create destroy
rails generate model User name:string email:string password_digest:string
rails generate model Artigo nome_artigo:string fonte:string link:string user:references
rails db:migrate
```

---

## 🔍 Funcionalidades

- ✅ Cadastro e login de usuários
- ✅ Pesquisa de termos na NewsAPI
- ✅ Salvamento de artigos favoritos
- ✅ Remoção de artigos com atualização em tempo real (Hotwire/Turbo)
- ✅ Tela de listagem dos artigos salvos

---

## 🎨 Design

A interface foi inspirada em portais de pesquisa modernos, priorizando:

- Simplicidade e foco na usabilidade
- Barra de pesquisa centralizada na página principal
- Visual limpo e responsivo para facilitar leitura e interação
- Utilizado Tailwind
---



## 🚀 Palavras testadas


- trump
- google
- facebook

---

## 📝 Considerações Finais

Este projeto foi desenvolvido como desafio técnico para a Mettzer, com foco em boas práticas, clareza de código e usabilidade para o usuário final.
