# Descrição do Repositório: Sistema de Controle de Consultas Hospitalares

Este repositório contém o código fonte e a documentação para um sistema de controle de consultas hospitalares, desenvolvido como parte da aula de MySQL oferecido pelo Instituto PROA.

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

## Observações:
- Este sistema foi desenvolvido como parte da aula de MySQL oferecido pelo Instituto PROA, com o objetivo de proporcionar aos alunos uma aplicação prática para o aprendizado dos conceitos de gerenciamento de banco de dados.
