# Descrição do Repositório: Sistema de Controle de Consultas Hospitalares

Este repositório contém o código fonte e a documentação para um sistema de controle de consultas hospitalares, desenvolvido como parte da aula de MySQL oferecido pelo Instituto PROA.

![banco_de_dados](https://github.com/evertonmdev/BD-Hospital/assets/122039415/1aaaa1e9-f66f-477f-b35f-cb449647b877)

## Requisitos para o Banco de Dados:

1. ### Cadastro de Médicos:
   - Os médicos podem ser generalistas, especialistas ou residentes.
   - Dados pessoais dos médicos são cadastrados, incluindo nome, data de nascimento, endereço, telefone e e-mail.
   - Os dados dos médicos são armazenados em planilhas digitais.

2. ### Especialidades dos Médicos:
   - Cada médico pode ter uma ou mais especialidades, como pediatria, clínica geral, gastroenterologia e dermatologia.

3. ### Integração de Registros Antigos:
   - Possibilidade de inclusão de dados provenientes de registros antigos em formulário de papel no novo sistema.

4. ### Cadastro de Pacientes:
   - Dados pessoais dos pacientes são cadastrados, incluindo nome, data de nascimento, endereço, telefone e e-mail.
   - Documentos como CPF e RG dos pacientes são registrados.
   - Informações sobre convênios são armazenadas, incluindo nome, CNPJ e tempo de carência.

5. ### Consultas:
   - Registros de consultas são realizados, contendo data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira.
   - Especificação da especialidade buscada pelo paciente também é registrada.

6. ### Receitas Médicas:
   - No encerramento da consulta, o médico pode registrar os medicamentos prescritos, a quantidade e as instruções de uso.
   - O sistema é capaz de gerar um relatório da receita para o paciente ou permitir sua visualização online.



# Projeto de Banco de Dados Hospitalar - Parte 2
Nesta etapa do projeto, foram implementadas novas funcionalidades essenciais para o controle de internações de pacientes no sistema hospitalar. As principais adições incluem a associação de internações a quartos, o registro de profissionais de enfermagem responsáveis pelo acompanhamento dos pacientes e a vinculação de cada internação a um paciente e a um médico responsável.

Além disso, foi realizada a integração das novas funcionalidades com a base de dados existente, permitindo que as informações de internações sejam devidamente armazenadas e gerenciadas em conjunto com os demais registros do sistema.

![hospital_updated](https://github.com/evertonmdev/BD-Hospital/assets/122039415/9c39d1f2-f997-4435-8b40-66eb7bf828c9)

## Alterações Realizadas:
- Adição de Entidades e Relacionamentos:

Foram adicionadas novas entidades para representar os quartos, tipos de quartos e profissionais de enfermagem, juntamente com os seus atributos correspondentes.
Estabeleceu-se relacionamentos entre as novas entidades e as existentes, garantindo a integração adequada no banco de dados.

- Implementação de Scripts SQL:

Foi criado um conjunto de scripts SQL para a geração do banco de dados, incluindo a definição das tabelas, colunas, chaves primárias e estrangeiras.
Foram incluídas instruções de montagem para cada uma das entidades/tabelas, abrangendo tanto as entidades da atividade anterior quanto as novas entidades propostas.

- Atualização do Diagrama ER:
O diagrama ER foi atualizado para refletir as novas funcionalidades e relacionamentos incorporados ao sistema hospitalar.

## Ferramentas Utilizadas:
- Ferramenta de Diagrama ER utilizada: dbdesigner
- MySQL Workbench

## Arquivos Gerados:
= hospital_updated.sql: Contém os comandos SQL para a criação das tabelas e relacionamentos.
- hospital_updated.png: Representação gráfica do diagrama ER atualizado.

A etapa 2 do projeto foi concluída com sucesso, e as novas funcionalidades foram integradas de forma eficiente ao banco de dados existente. Todas as alterações realizadas estão documentadas nos arquivos correspondentes.

## Observações:
- Este sistema foi desenvolvido como parte da aula de MySQL oferecido pelo Instituto PROA, com o objetivo de proporcionar aos alunos uma aplicação prática para o aprendizado dos conceitos de gerenciamento de banco de dados.



