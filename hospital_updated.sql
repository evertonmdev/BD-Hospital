CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

CREATE TABLE medicos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome BOOLEAN NOT NULL,
  tipo VARCHAR(255) NOT NULL,
  planilha_digital BOOLEAN NOT NULL,
  planilha_papel BOOLEAN NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at INT NOT NULL
);

CREATE TABLE especialidades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL
);

CREATE TABLE medico_especialidade (
  id INT AUTO_INCREMENT PRIMARY KEY,
  especialidade INT NOT NULL,
  FOREIGN KEY (especialidade) REFERENCES especialidades(id)
);

CREATE TABLE pacientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  telefone VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  rg VARCHAR(20) NOT NULL,
  convenio_nome VARCHAR(100) NOT NULL,
  convenio_cnpj VARCHAR(20) NOT NULL,
  tempo_carencia INT NOT NULL
);

CREATE TABLE consultas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data_hora DATETIME NOT NULL,
  medico_id INT NOT NULL,
  paciente_id INT NOT NULL,
  valor_consulta DECIMAL(10,2) NOT NULL,
  numero_carteira VARCHAR(50) NOT NULL,
  convenio_nome VARCHAR(100) NOT NULL,
  especialidade_id INT NOT NULL,
  FOREIGN KEY (medico_id) REFERENCES medicos(id),
  FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
  FOREIGN KEY (especialidade_id) REFERENCES especialidades(id)
);

CREATE TABLE receitas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  consulta_id INT NOT NULL,
  instrucoes_uso TEXT NOT NULL,
  medicamento VARCHAR(100) NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (consulta_id) REFERENCES consultas(id)
);

CREATE TABLE internacao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quarto_id INT NOT NULL,
  enfermeiro_id INT NOT NULL,
  paciente_id INT NOT NULL,
  medico_id INT NOT NULL,
  data_entrada DATE NOT NULL,
  data_prev_alta DATE NOT NULL,
  data_alta DATE NOT NULL,
  procedimento VARCHAR(200) NOT NULL,
  FOREIGN KEY (quarto_id) REFERENCES quarto(id),
  FOREIGN KEY (enfermeiro_id) REFERENCES enfermeiro(id),
  FOREIGN KEY (paciente_id) REFERENCES pacientes(id),
  FOREIGN KEY (medico_id) REFERENCES medicos(id)
);

CREATE TABLE quarto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipo_quarto VARCHAR(40) NOT NULL,
  FOREIGN KEY (tipo_quarto) REFERENCES tipo_quarto(descricao)
);

CREATE TABLE tipo_quarto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(200) NOT NULL,
  valor_diaria DECIMAL(10,2) NOT NULL
);

CREATE TABLE enfermeiro (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  cre VARCHAR(40) UNIQUE NOT NULL
);