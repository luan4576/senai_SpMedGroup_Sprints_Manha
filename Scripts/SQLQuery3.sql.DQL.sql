use SpMedGroupManha;

			SELECT * FROM Enderecos;
			SELECT * FROM Usuarios;
			SELECT * FROM TipoUsuarios;
			SELECT * FROM Especialidades;
			SELECT * FROM Situacoes;
			SELECT * FROM Clinicas;
			SELECT * FROM Prontuarios;
			SELECT * FROM Medicos;
			SELECT * FROM Consultas;

SELECT CRM, NomeMedico, Usuarios.Email, Especialidades.TipoEspecialidade as Especialidade, Clinicas.NomeFantasia, Clinicas.CNPJ, Clinicas.RazaoSocial, Enderecos.Cep, Enderecos.Rua ,Enderecos.Numero
FROM Medicos
INNER JOIN Usuarios ON Medicos.IDUsuario = Usuarios.IDUsuario
INNER JOIN Especialidades ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade
INNER JOIN Clinicas ON Medicos.IdClinica = Clinicas.IdClinica
INNER JOIN Enderecos ON Clinicas.IdEndereco = Enderecos.IdEndereco;


SELECT NomePaciente, Email, DataNascimento, Telefone, RG, CPF, Enderecos.Rua, Enderecos.Numero, Enderecos.Estado, Enderecos.CEP
FROM Prontuarios
INNER JOIN Usuarios ON Prontuarios.IdUsuario = Usuarios.IdUsuario
INNER JOIN Enderecos ON Prontuarios.IdEndereco = Enderecos.IdEndereco;