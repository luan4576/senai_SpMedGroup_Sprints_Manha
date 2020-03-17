use SpMedGroupManha;

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


	INSERT INTO Prontuarios(NomePaciente,RG,CPF,DataNascimento,Telefone,IdUsuario,IdEndereco)
	VALUES	('Ligia','43522543-5','94839859000','12/02/2020','1134567898',3,1),
			('Renato','78910123X','98765433422','12/02/2020','1123456789',3,1),
			('Nicolas','98765123X','09876533466','12/02/2020','1198567877',3,1);

	
INSERT INTO Medicos(CRM,NomeMedico,IdEspecialidade,IdClinica,IdUsuario)
	VALUES	('54356-SP','ricardo.lemos@spmedicalgroup.com.br',3,1,2);
			
							   
INSERT INTO Consultas(Descricao,IdProntuario,IdMedico,IdSituacao)
	VALUES	('nao sei',1,1,2);