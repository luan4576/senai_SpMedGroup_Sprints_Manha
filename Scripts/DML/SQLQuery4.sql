CREATE DATABASE SpMedGroupManha;

USE SpMedGroupManha;


CREATE TABLE Enderecos (
		IdEndereco INT PRIMARY KEY IDENTITY,
		Cep CHAR (8) NOT NULL,
		Estado CHAR (2) NOT NULL,
		Rua VARCHAR (200),
		Numero CHAR (10)
		);

CREATE TABLE Especialidades(
		IdEspecialidade INT PRIMARY KEY IDENTITY,
		TipoEspecialidade VARCHAR (200)
		);

CREATE TABLE Situacoes(
		IdSituacao INT PRIMARY KEY IDENTITY,
		TipoSituacao VARCHAR (200)
		);

CREATE TABLE TipoUsuarios(
		IdTipoUsuario INT PRIMARY KEY IDENTITY,
		TituloTipoUsuario VARCHAR (200) NOT NULL
		);

		

CREATE TABLE Clinicas(
		IdClinica INT PRIMARY KEY IDENTITY,
		CNPJ CHAR (14) NOT NULL,
		HorarioFuncionamento VARCHAR (200),
		NomeFantasia VARCHAR (200),
		RazaoSocial VARCHAR (200),
		IdEndereco INT FOREIGN KEY REFERENCES Enderecos (IdEndereco)
		);

CREATE TABLE Usuarios(
		IdUsuario INT PRIMARY KEY IDENTITY,
		Email VARCHAR (200) UNIQUE,
		Senha VARCHAR (200),
		IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuarios (IdTipoUsuario)
		);

		

CREATE TABLE Prontuarios(
		IdProntuario INT PRIMARY KEY IDENTITY,
		NomePaciente VARCHAR (200),
		RG CHAR (10) UNIQUE,
		CPF CHAR (11) UNIQUE,
		Endereco VARCHAR (200),
		DataNascimento DATE ,
		Telefone VARCHAR (200),
		IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
		);

CREATE TABLE Medicos(
		IdMedico INT PRIMARY KEY IDENTITY,
		CRM CHAR (10)UNIQUE,
		IdEspecialidade INT FOREIGN KEY REFERENCES Especialidades (IdEspecialidade),
		NomeMedico VARCHAR (200),
		IdClinica INT FOREIGN KEY REFERENCES Clinicas(Idclinica),
		IdUsuario INT FOREIGN KEY REFERENCES Usuarios(IdUsuario)
		);

		CREATE TABLE Consultas(
		IdConsulta INT PRIMARY KEY IDENTITY,
		Descricao VARCHAR (200),
		IdProntuario INT FOREIGN KEY REFERENCES Prontuarios (IdProntuario),
		IdMedico INT FOREIGN KEY REFERENCES Medicos (IdMedico),
		IdSituacao INT FOREIGN KEY REFERENCES Situacoes (IdSituacao)
		);


		INSERT INTO Enderecos(Cep,Estado,Rua,Numero)
		VALUES (11111111,'SP','Alameda Barao de Limeira','539');

		INSERT INTO Especialidades(TipoEspecialidade)
		VALUES ('Acupuntura'),
			   ('Anestesiologia'),
			    ('Angiologia'),
				 ('Cardiologia'),
				  ('Cirurgia Cardiovascular'),
				   ('Cirurgia da Mão'),
				    ('Cirurgia do Aparelho Digestivo'),
					 ('Cirurgia Geral'),
					  ('Cirurgia Pediátrica'),
					   ('Cirurgia Plástica'),
					    ('Cirurgia Torácica'),
						 ('Cirurgia Vascular'),
						  ('Dermatologia'),
						   ('Radioterapia'),
						    ('Urologia'),
							 ('Pediatria'),
							  ('Psiquiatria');

	INSERT INTO Situacoes(TipoSituacao)
	VALUES	('Realizado'),
			('Agendado'),
			('Cancelado');

			SELECT * FROM TipoUsuarios

	INSERT INTO TipoUsuarios(TituloTipoUsuario)
	VALUES	('Administrador'),
			('Medico'),
			('Usuario');

	INSERT INTO Clinicas(CNPJ,HorarioFuncionamento,NomeFantasia,RazaoSocial,IdEndereco)
	VALUES	('11111111','6:00 18:00','Trem','Clinica',1);


	INSERT INTO Usuarios(Email,Senha,IdTipoUsuario)
	VALUES	('Medicosteven@123','123456',2),
			('Luan@123','78910',3),
			('Admin@123','98765',1);

			SELECT * FROM TipoUsuarios

	INSERT INTO Prontuarios(NomePaciente,RG,CPF,Endereco,DataNascimento,Telefone,IdUsuario)
	VALUES	('Ligia','43522543-5','94839859000','ruaisoomesmo','12/02/2020','1134567898',3),
			('Renato','78910123X','98765433422','ruabemisso','12/02/2020','1123456789',3),
			('Nicolas','98765123X','09876533466','ruanemsei','12/02/2020','1198567877',3);

	
INSERT INTO Medicos(CRM,NomeMedico,IdEspecialidade,IdClinica,IdUsuario)
	VALUES	('54356-SP','ricardo.lemos@spmedicalgroup.com.br',3,1,2);
			
							   
INSERT INTO Consultas(Descricao,IdProntuario,IdMedico,IdSituacao)
	VALUES	('nao sei',1,1,2);
