-- criação do banco de dados para o Desafio Criando banco de dados do zero de Oficina Mecânica-OS refinado
create database oficina_mecanica_refinado;
-- drop database oficina_mecanica_refinado;
use oficina_mecanica_refinado;
-- show tables;

-- Tabela 1)
create table t_pessoa(
	idPessoa int auto_increment primary key,
    Tipo_Pessoa enum('PF','PJ') not null,
    Endereco varchar(30) not null,
    email varchar(45),
    Data_cadastro date not null
);
-- desc pessoa;

-- Tabela 2)
create table t_cliente(
	idCliente int auto_increment primary key,
    Pessoa_id int,
    Identificacao varchar(30),
    Contato char(11) not null,
    Cupom_desconto varchar(30),
    constraint fk_pessoa_cliente foreign key (Pessoa_id) references t_Pessoa(idPessoa)
);
-- desc cliente;

-- Tabela 3)
create table t_PessoaFisica(
	idPessoaFisica int,
    Primeiro_nome varchar(30) not null,
    Nome_meio varchar(3) not null,
    Sobrenome varchar(30) not null,
    CPF char(11) not null,
    Data_nascimento date not null,
    constraint fk_pessoa_PessoaFisica foreign key (idPessoaFisica) references t_Pessoa(idPessoa),
    constraint unique_cpf_PessoaFisica unique (CPF)
);
-- desc pessoafisica;

-- Tabela 4)
create table t_PessoaJuridica(
	idPessoaJuridica int,
    Razao_social varchar(45) not null,
    Nome_fantasia varchar(45) not null,
    CNPJ char(14) not null,
    Data_cadastro date not null,
    constraint fk_pessoa_PessoaJuridica foreign key (idPessoaJuridica) references t_Pessoa(idPessoa),
    constraint unique_cnpj_PessoaJuridica unique (CNPJ)
);
-- desc pessoajuridica;

-- Tabela 5)
create table t_Fornecedor(
	idFornecedor int auto_increment primary key,
    PessoaJuridica_id int,
    Ativo boolean default true not null,
    Qualificacao_fornecedor enum('ruim', 'regular', 'bom', 'otimo') default 'bom',
    constraint fk_Fornecedor_pj foreign key (PessoaJuridica_id) references t_PessoaJuridica(idPessoaJuridica)
);
-- desc fornecedor;

-- Tabela 6)
create table t_Pecas(
	idPecas int auto_increment primary key,
    Quandidade int not null, 
    Valor_peca float not null,
    Local_estoque varchar(250) not null
);
-- desc estoque;

-- Tabela 7)
create table t_mecanico(
	idMecanico int auto_increment primary key,
    pessoa_id int,
    Especialidade varchar(45) not null,
    constraint fk_mecanicoPessoa foreign key (pessoa_id) references t_Pessoa(idPessoa)
);
-- desc mecanico;

-- Tabela 8)
create table t_veiculo(
	idVeiculo int auto_increment primary key,
    cliente_id int,
    Placa varchar(10) not null,
    Fabricante varchar(30) not null,
    Modelo varchar (20) not null,
    Ano_fabricacao date not null,
    constraint fk_clienteVeiculo foreign key (cliente_id) references t_Cliente(idcliente)
);

-- Tabela 9)
create table t_equipe(
	idEquipe int auto_increment primary key,
    Equipe_nome varchar(30) not null
);

-- Tabela 10)
create table t_servico(
	idServico int auto_increment primary key,
    Servico_nome varchar(30) not null,
    Valor_servico float not null
    
);

-- Tabela 11)
create table t_Status_Os(
	idStatus_os int auto_increment primary key,
    Autorização ENUM('Autorizado', 'Aguardando autorização') not null default 'Aguardando autorização'
    
);

-- Tabela 12)
create table t_tipoPedido(
	idTipoPedido int auto_increment primary key,
    Tipo_pedido ENUM('Revisão', 'Conserto') not null
    
);

-- Tabela 13)
create table t_Pedido(
	idPedido int auto_increment primary key,
    TipoPedido_id int,
    Descricao varchar(45) not null,
    constraint fk_TipoServico_Pedido foreign key (TipoPedido_id) references t_tipoPedido(idTipoPedido)
    
);

-- Tabela 14)
create table t_OrdemServico(
	idOS int auto_increment primary key,
    Status_OS_id int,
    Descricao varchar(45) not null,
    Data_emissao date not null,
    Data_conclusao date not null,
    Valor_OS float not null,
    constraint fk_Status_OS_OrdemServico foreign key (Status_OS_id) references t_Status_OS(idStatus_os)
    
);

-- Criação das tabelas de relação n:m

-- Tabela 15)
create table T_mecanicoEquipe(
	idME_Mecanico int,
    idME_Equipe int,
    primary key (idME_Mecanico, idME_Equipe),
    constraint fk_mecanico_equipe foreign key (idME_Mecanico) references t_mecanico(idMecanico),
    constraint fk_equipe_mecanico foreign key (idME_Equipe) references t_equipe(idEquipe)
);
-- desc vendedorProduto;

-- Tabela 16)
create table T_equipeServico(
	idES_Equipe int,
    idES_Servico int,
    primary key (idES_Equipe, idES_Servico),
    constraint fk_equipe_servico foreign key (idES_Equipe) references t_equipe(idEquipe),
    constraint fk_servico_equipe foreign key (idES_Servico) references t_servico(idServico)
);
-- desc vendedorProduto;

-- Tabela 17)
create table T_fornecedorPeca(
	idFP_Fornecedor int,
    idFP_Peca int,
    primary key (idFP_Fornecedor, idFP_Peca),
    constraint fk_fornecedor_peca foreign key (idFP_Fornecedor) references t_fornecedor(idfornecedor),
    constraint fk_peca_fornecedor foreign key (idFP_Peca) references t_pecas(idPecas)
);
-- desc vendedorProduto;

-- Tabela 18)
create table T_servicos_OS(
	idSO_servicos int,
    idSO_OS int,
    primary key (idSO_servicos, idSO_OS),
    constraint fk_servicos_OS foreign key (idSO_servicos) references t_servico(idservico),
    constraint fk_OS_servicos foreign key (idSO_OS) references t_ordemServico(idOS)
);

-- Tabela 19)
create table T_clientePedido(
	idCP_Cliente int,
    idCP_Pedido int,
    primary key (idCP_Cliente, idCP_Pedido),
    constraint fk_cliente_pedido foreign key (idCP_Cliente) references t_cliente(idCliente),
    constraint fk_pedido_cliente foreign key (idCP_Pedido) references t_pedido(idPedido)
);

-- Tabela 20)
create table T_pecas_OS(
	idPO_Pecas int,
    idPO_OS int,
    primary key (idPO_Pecas, idPO_OS),
    constraint fk_pecas_OS foreign key (idPO_Pecas) references t_pecas(idPecas),
    constraint fk_OS_pecas foreign key (idPO_OS) references t_ordemServico(idOS)
);

-- Tabela 21)
create table T_pedido_Os(
	idPOS_Pedido int,
    idPOS_OS int,
    primary key (idPOS_Pedido, idPOS_OS),
    constraint fk_pedido_OS foreign key (idPOS_Pedido) references t_pedido(idPedido),
    constraint fk_OS_pedido foreign key (idPOS_OS) references t_ordemServico(idOS)
);







