
#  Criando um Projeto Lógico de Banco de Dados do Zero


## 📑 Objetivo:

Criar a modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Definir todas as etapas. Desde o esquema até a implementação do banco de dados.

Após a criação do esquema lógico, realizar a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realizar a persistência de dados para realização de testes. Especificar ainda queries mais complexas do que apresentadas durante a explicação do desafio.

Modelo apresentado [OS - Oficina mecânica](Modelo_Oficina_mecanica_OS.png) acrescentado os seguintes pontos:<br/>
<br/>
* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
* Entrega – Possui status e código de rastreio;
<br/>

## 📑 Perguntas para queries SQL:

* Quantos pedidos foram feitos por cada cliente?
* Algum vendedor também é fornecedor?
* Relação de produtos fornecedores e estoques;
* Relação de nomes dos fornecedores e nomes dos produtos;

## 📑 Resultado:

* Esquema Relacional [e-commerce-refinado](Esquema_conceitual_e-commerce-refinado.png).
* Criação do banco e tabelas: [Esquema relacional](Desafio_Esquema_conceitual_para_o_Esquema_Relacional_e-commerce_refinado.sql).
* Dados inseridos: [dados do desafio](Dados_inseridos_no_desafio.sql).
* Queries SQL de manipulação dos dados: [Consultas](Queries_de_manipulação-Dados_inseridos_no_desafio.sql)
<hr/>

**reproduzido by** [Silvano Rodrigues 🖖](https://github.com/Silvanors)

  
