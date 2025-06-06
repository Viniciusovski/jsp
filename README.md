# O que é JSP?

**JSP (JavaServer Pages)** é uma tecnologia Java que permite criar páginas web dinâmicas usando linguagem de marcação (como HTML) combinada com código Java.  
Ela simplifica o desenvolvimento de aplicações web ao permitir que você misture conteúdo estático (HTML) com conteúdo dinâmico (Java) na mesma página.

---

## Como o JSP funciona?

O JSP segue um ciclo de vida simples:

1. **Tradução**: Quando um usuário acessa uma página JSP pela primeira vez, o servidor web (como Tomcat) converte o arquivo `.jsp` em um servlet Java (`.java`).
2. **Compilação**: O servlet gerado é então compilado em um arquivo `.class`.
3. **Execução**: O servlet compilado é executado no servidor, gerando conteúdo HTML dinâmico.
4. **Resposta**: O HTML gerado é enviado de volta ao navegador do cliente.

---

## Estrutura básica de um arquivo JSP

Um arquivo JSP geralmente tem a extensão `.jsp` e contém três tipos principais de elementos:

### 1. Elementos de script

```jsp
<%-- Comentário JSP --%>

<% // Código Java (scriptlet) %>
<%= expressãoJava %>  <!-- Exibe o resultado da expressão -->
<%! declaração %>     <!-- Declara variáveis ou métodos -->
```

### 2. Diretivas

```jsp
<%@ page import="java.util.Date" %>  <!-- Importa classes -->
<%@ include file="cabecalho.jsp" %> <!-- Inclui outro arquivo -->
```

### 3. Ações

```jsp
<jsp:useBean id="usuario" class="com.exemplo.Usuario" />
<jsp:getProperty name="usuario" property="nome" />
```

---

## Vantagens do JSP

- **Separação de preocupações**: Permite separar lógica de negócio (Java) da apresentação (HTML).
- **Reutilização de componentes**: Através de tags personalizadas e includes.
- **Acesso a toda API Java**: Pode usar todas as bibliotecas Java.
- **Performance**: Compilado em servlets, que são mais eficientes que interpretação em tempo de execução.

---

## Quando usar JSP?

JSP é ideal para:

- Aplicações web tradicionais com páginas dinâmicas.
- Situações onde você precisa misturar lógica Java com HTML.
- Projetos que já usam Java no back-end.

---

## Alternativas modernas

Embora JSP ainda seja usado, muitas aplicações modernas preferem:

- Frameworks MVC como **Spring MVC**.
- Tecnologias de front-end como **Thymeleaf**, **JSF** ou frameworks JavaScript como **React**, **Angular**, **Vue**.
