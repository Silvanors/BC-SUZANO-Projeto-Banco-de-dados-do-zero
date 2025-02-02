
--  1) Inserindo dados na tabela t_pessoa
alter table t_pessoa auto_increment=1;
INSERT INTO t_pessoa (Tipo_Pessoa, Endereco, email, Data_cadastro) VALUES
('PF', 'Rua das Flores, 123', 'joao@gmail.com', '2023-01-10'),
('PF', 'Av. Paulista, 456', 'maria@yahoo.com', '2023-02-15'),
('PF', 'Rua do Sol, 789', 'carlos@hotmail.com', '2023-03-20'),
('PJ', 'Av. das Empresas, 101', 'empresaA@corporate.com', '2023-04-25'),
('PJ', 'Rua Industrial, 202', 'empresaB@business.com', '2023-05-30'),
('PJ', 'Av. Comercial, 303', 'empresaC@corp.com', '2023-06-10'),
('PF', 'Rua Verde, 404', 'fernanda@gmail.com', '2023-07-15'),
('PJ', 'Rua Azul, 505', 'empresaD@services.com', '2023-08-20'),
('PF', 'Av. Central, 606', 'pedro@outlook.com', '2023-09-05'),
('PF', 'Rua das Palmeiras, 707', 'ana@gmail.com', '2023-10-12'),
('PJ', 'Av. do Comércio, 808', 'empresaE@market.com', '2023-11-18'),
('PJ', 'Rua das Indústrias, 909', 'empresaF@supply.com', '2023-12-22'),
('PF', 'Rua das Orquídeas, 1010', 'lucas@yahoo.com', '2024-01-15'),
('PF', 'Av. das Árvores, 1111', 'mariana@gmail.com', '2024-02-17'),
('PJ', 'Rua das Startups, 1212', 'empresaG@tech.com', '2024-03-20');

-- 2) Inserindo dados na tabela t_cliente
alter table t_cliente auto_increment=1;
INSERT INTO t_cliente (Pessoa_id, Identificacao, Contato, Cupom_desconto) VALUES
(1, 'Cliente A', '11987654321', 'DESCONTO10'),
(2, 'Cliente B', '11987654322', 'DESCONTO15'),
(3, 'Cliente C', '11987654323', 'DESCONTO20'),
(4, 'Cliente D', '11987654324', 'DESCONTO25'),
(5, 'Cliente E', '11987654325', 'DESCONTO30'),
(6, 'Cliente F', '11987654326', 'DESCONTO35'),
(7, 'Cliente G', '11987654327', 'DESCONTO40'),
(8, 'Cliente H', '11987654328', 'DESCONTO45'),
(9, 'Cliente I', '11987654329', 'DESCONTO50'),
(10, 'Cliente J', '11987654330', 'DESCONTO55'),
(11, 'Cliente K', '11987654331', 'DESCONTO60'),
(12, 'Cliente L', '11987654332', 'DESCONTO65'),
(13, 'Cliente M', '11987654333', 'DESCONTO70'),
(14, 'Cliente N', '11987654334', 'DESCONTO75'),
(15, 'Cliente O', '11987654335', 'DESCONTO80');

-- 3) Inserindo dados na tabela t_PessoaFisica
INSERT INTO t_PessoaFisica (idPessoaFisica, Primeiro_nome, Nome_meio, Sobrenome, CPF, Data_nascimento) VALUES
(1, 'João', 'S.', 'Silva', '12345678901', '1990-05-20'),
(2, 'Maria', 'A.', 'Souza', '23456789012', '1985-09-10'),
(3, 'Carlos', 'B.', 'Lima', '34567890123', '1992-07-15'),
(7, 'Fernanda', 'C.', 'Almeida', '45678901234', '1998-11-25'),
(9, 'Pedro', 'D.', 'Henrique', '56789012345', '1980-04-30'),
(10, 'Ana', 'E.', 'Oliveira', '67890123456', '2000-01-05'),
(13, 'Lucas', 'F.', 'Martins', '78901234567', '1995-08-18'),
(14, 'Mariana', 'G.', 'Rocha', '89012345678', '1987-12-22');

-- 4) Inserindo dados na tabela t_PessoaJuridica
INSERT INTO t_PessoaJuridica (idPessoaJuridica, Razao_social, Nome_fantasia, CNPJ, Data_cadastro) VALUES
(4, 'Empresa A Ltda', 'Empresa A', '11122233344455', '2023-04-25'),
(5, 'Empresa B S.A.', 'Empresa B', '22233344455566', '2023-05-30'),
(6, 'Empresa C Comércio', 'Empresa C', '33344455566677', '2023-06-10'),
(8, 'Empresa D Serviços', 'Empresa D', '44455566677788', '2023-08-20'),
(11, 'Empresa E Marketing', 'Empresa E', '55566677788899', '2023-11-18'),
(12, 'Empresa F Suprimentos', 'Empresa F', '66677788899900', '2023-12-22'),
(15, 'Empresa G Tecnologia', 'Empresa G', '77788899900011', '2024-03-20');

-- 5) Inserindo dados na tabela t_Fornecedor
alter table t_fornecedor auto_increment=1;
INSERT INTO t_Fornecedor (PessoaJuridica_id, Ativo, Qualificacao_fornecedor) VALUES
(4, true, 'bom'),
(5, true, 'otimo'),
(6, false, 'regular'),
(8, true, 'bom'),
(11, true, 'otimo'),
(12, false, 'ruim'),
(15, true, 'bom');

-- 6) Inserindo dados na tabela t_Pecas
alter table t_pecas auto_increment=1;
INSERT INTO t_Pecas (Quandidade, Valor_peca, Local_estoque) VALUES
(50, 12.99, 'Depósito Central - Prateleira A1'),
(30, 25.50, 'Depósito Central - Prateleira B3'),
(100, 7.80, 'Setor 1 - Gaveta 4'),
(15, 89.90, 'Setor 3 - Estante C2'),
(75, 14.30, 'Depósito Secundário - Prateleira D5'),
(20, 150.00, 'Armazém Principal - Caixa 12'),
(60, 9.99, 'Setor 2 - Gaveta 7'),
(10, 299.99, 'Armazém Principal - Prateleira E6'),
(90, 5.50, 'Depósito Central - Prateleira F4'),
(45, 49.90, 'Setor 3 - Caixa 8');

-- 7) Inserindo dados na tabela t_mecanico
alter table t_mecanico auto_increment=1;
INSERT INTO t_mecanico (pessoa_id, Especialidade) VALUES
(1, 'Suspensão e Direção'),
(2, 'Motor e Injeção Eletrônica'),
(3, 'Freios e ABS'),
(7, 'Transmissão e Câmbio'),
(9, 'Ar Condicionado e Climatização'),
(10, 'Elétrica e Eletrônica'),
(13, 'Funilaria e Pintura'),
(14, 'Diagnóstico Computadorizado'),
(5, 'Motores Diesel'),
(6, 'Troca de Óleo e Manutenção Rápida');

-- 8) Inserindo dados na tabela t_veiculo
alter table t_veiculo auto_increment=1;
INSERT INTO t_veiculo (cliente_id, Placa, Fabricante, Modelo, Ano_fabricacao) VALUES
(1, 'ABC1D23', 'Toyota', 'Corolla', '2018-01-01'),
(2, 'XYZ4F56', 'Honda', 'Civic', '2020-05-15'),
(3, 'JKL7G89', 'Ford', 'Focus', '2017-08-10'),
(4, 'MNO2H34', 'Chevrolet', 'Onix', '2019-11-20'),
(5, 'PQR5I67', 'Volkswagen', 'Golf', '2021-02-28'),
(6, 'STU8J90', 'Fiat', 'Argo', '2022-06-30'),
(7, 'VWX3K12', 'Renault', 'Duster', '2016-09-05'),
(8, 'YZA6L45', 'Hyundai', 'HB20', '2019-12-10'),
(9, 'BCD9M78', 'Nissan', 'Sentra', '2015-07-25'),
(10, 'EFG0N90', 'Jeep', 'Compass', '2023-03-18');


-- 9) Inserindo mais dados na tabela t_equipe
alter table t_equipe auto_increment=1;
INSERT INTO t_equipe (Equipe_nome) VALUES
('Manutenção Geral'),
('Elétrica e Diagnóstico'),
('Pintura e Funilaria'),
('Troca de Óleo'),
('Suspensão e Freios'),
('Revisão Completa'),
('Mecânica Pesada'),
('Diagnóstico Computadorizado'),
('Ar Condicionado'),
('Alinhamento e Balanceamento');

select * from t_equipe;
-- 10) Inserindo dados na tabela t_servico
alter table t_servico auto_increment=1;
INSERT INTO t_servico (Servico_nome, Valor_servico) VALUES
('Troca de óleo', 120.00),
('Alinhamento e Balanceamento', 180.00),
('Revisão Completa', 450.00),
('Troca de Pastilhas de Freio', 250.00),
('Limpeza de Bicos Injetores', 300.00),
('Diagnóstico Eletrônico', 200.00),
('Manutenção do Ar Condicionado', 350.00),
('Troca de Correia Dentada', 500.00),
('Funilaria e Pintura', 1200.00),
('Troca de Embreagem', 800.00);

-- 11) Inserindo dados na tabela t_Status_Os
alter table t_Status_Os auto_increment=1;
INSERT INTO t_Status_Os (Autorização) VALUES
('Autorizado'),
('Aguardando autorização');

-- 12) Inserindo dados na tabela t_tipoPedido
alter table t_tipoPedido auto_increment=1;
INSERT INTO t_tipoPedido (Tipo_pedido) VALUES
('Revisão'),
('Conserto');

-- 13) Inserindo dados na tabela t_Pedido
alter table t_Pedido auto_increment=1;
INSERT INTO t_Pedido (TipoPedido_id, Descricao) VALUES
(1, 'Revisão Completa de Óleo e Filtros'),
(2, 'Conserto de Sistema de Freios'),
(1, 'Troca de Pastilhas de Freio e Alinhamento'),
#(1, 'Revisão de Suspensão e Balanceamento de Pneus'),
(2, 'Reparo no Câmbio Automático'),
#(2, 'Conserto de Ar Condicionado e Climatização'),
(1, 'Troca de Correia Dentada e Revisão Geral'),
(1, 'Revisão de Motor e Troca de Óleo'),
(2, 'Troca de Embre e Reparo no Sis Elétrico'),
(1, 'Revisão Completa de Sistema de Freios'),
(2, 'Reparo no Alternador e Substit de Bat'),
(1, 'Alinhamento e Balanceamento de Rodas'),
(2, 'Conserto de Vidro e Sis de Fechamento'),
#(1, 'Revisão e Substituição de Filtro de Ar e Combustível'),
(2, 'Reparo no Radiador e Sistema de Arrefecimento');

-- 14) Inserindo dados na tabela t_OrdemServico
alter table t_OrdemServico auto_increment=1;
INSERT INTO t_OrdemServico (Status_OS_id, Descricao, Data_emissao, Data_conclusao, Valor_OS) VALUES
(1, 'Revisão Completa de Óleo e Filtros', '2025-01-10', '2025-01-12', 180.00),
(2, 'Conserto de Sistema de Freios', '2025-01-11', '2025-01-15', 350.00),
(1, 'Troca de Pastilhas de Freio e Alinhamento', '2025-01-12', '2025-01-14', 250.00),
(1, 'Revisão de Suspensão e Balanceamento de Pneus', '2025-01-13', '2025-01-16', 320.00),
(2, 'Reparo no Câmbio Automático', '2025-01-14', '2025-01-18', 800.00),
(2, 'Conserto de Ar Condicionado e Climatização', '2025-01-15', '2025-01-17', 450.00),
(1, 'Troca de Correia Dentada e Revisão Geral', '2025-01-16', '2025-01-18', 550.00),
(1, 'Revisão de Motor e Troca de Óleo', '2025-01-17', '2025-01-20', 250.00),
#(2, 'Troca de Embreagem e Reparo no Sistema Elétrico', '2025-01-18', '2025-01-22', 700.00),
(1, 'Revisão Completa de Sistema de Freios', '2025-01-19', '2025-01-21', 280.00),
#(2, 'Reparo no Alternador e Substituição de Bateria', '2025-01-20', '2025-01-23', 400.00),
(1, 'Alinhamento e Balanceamento de Rodas', '2025-01-21', '2025-01-22', 150.00),
#(2, 'Conserto de Vidro Elétrico e Sistema de Fechamento', '2025-01-22', '2025-01-25', 500.00),
#(1, 'Revisão e Substituição de Filtro de Ar e Combustível', '2025-01-23', '2025-01-24', 200.00),
(2, 'Reparo no Radiador e Sistema de Arrefecimento', '2025-01-24', '2025-01-28', 350.00);

-- 15) Inserindo dados na tabela T_mecanicoEquipe
INSERT INTO T_mecanicoEquipe (idME_Mecanico, idME_Equipe) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(6, 4),
(9, 5),
(10, 5);

-- 16)Inserindo dados na tabela T_equipeServico
INSERT INTO T_equipeServico (idES_Equipe, idES_Servico) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 2),
(6, 4),
(7, 1),
(8, 3),
(9, 4),
(10, 2),
(1, 3),
(2, 4),
(3, 1),
(4, 2),
(5, 3);

-- 17) Inserindo dados na tabela T_fornecedorPeca
INSERT INTO T_fornecedorPeca (idFP_Fornecedor, idFP_Peca) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(2, 7),
(3, 8),
(1, 9),
(2, 10);

-- 18) Inserindo dados na tabela T_servicos_OS
INSERT INTO T_servicos_OS (idSO_servicos, idSO_OS) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(1, 3),
(5, 3),
(2, 4),
(3, 4),
(4, 5),
(5, 5),
(1, 6),
(2, 6),
(3, 7),
(4, 7),
(5, 8);

-- 19) Inserindo dados na tabela T_clientePedido
INSERT INTO T_clientePedido (idCP_Cliente, idCP_Pedido) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 11),
(2, 12);

-- 20)Inserindo dados na tabela T_pecas_OS
INSERT INTO T_pecas_OS (idPO_Pecas, idPO_OS) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5);

-- 21)Inserindo dados na tabela T_pedido_OS
INSERT INTO T_pedido_OS (idPOS_Pedido, idPOS_OS) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5);