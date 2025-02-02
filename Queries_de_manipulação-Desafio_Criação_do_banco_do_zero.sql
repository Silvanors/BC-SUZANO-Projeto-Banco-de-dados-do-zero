use oficina_mecanica_refinado;

#Algumas das perguntas que podes fazer para embasar as queries SQL:
#Quantos pedidos foram feitos por cada cliente?
#Algum cliente também é mecânico?
#Relação de equipe e serviços;
#Lista dos clientes e seus carros;
#Verificar se a Os e seus Status:

--
#Quantos pedidos foram feitos por cada cliente?

select c.idCliente, concat(pf.Primeiro_nome, ' ', pf.Nome_meio, ' ', pf.Sobrenome) as Nome_Cliente, COUNT(cp.idCP_Pedido) as totalPedidos
from 
    t_cliente c
	join t_pessoafisica pf on c.idCliente = pf.idPessoaFisica
	join t_clientePedido cp on c.idCliente = cp.idCP_Cliente
group by 
    c.idCliente,
    Nome_cliente
order by Nome_cliente;

#Total de clientes
select count(*) from t_cliente;

# Lista dos mecânicos e especialidade
select m.idMecanico, concat(pf.Primeiro_nome, ' ', pf.Nome_meio, ' ', pf.Sobrenome) as Nome_Mecanico, m.especialidade
	from t_mecanico m
    join t_pessoafisica pf on m.idMecanico = pf.idPessoaFisica
group by 
    m.idMecanico,
    Nome_Mecanico
order by Nome_Mecanico;

# Lista dos clientes e seus carros
select c.idCliente, concat(pf.Primeiro_nome, ' ', pf.Nome_meio, ' ', pf.Sobrenome) as Nome_Cliente, v.fabricante, v.modelo, v.placa
from 
    t_cliente c
	join t_pessoafisica pf on c.idCliente = pf.idPessoaFisica
	join t_clientePedido cp on c.idCliente = cp.idCP_Cliente
    join t_veiculo v on c.idCliente = v.cliente_id
order by Nome_cliente;

#Verificar Os e seus Status:
select c.idCliente, concat(pf.Primeiro_nome, ' ', pf.Nome_meio, ' ', pf.Sobrenome) as Nome_Cliente,
		cp.idCP_Pedido, 
        os.Status_OS_id,
        st.autorização
from 
    t_cliente c
	join t_pessoafisica pf on c.idCliente = pf.idPessoaFisica
	join t_clientePedido cp on c.idCliente = cp.idCP_Cliente
    join t_pedido_OS pos on pos.idPOS_Pedido = cp.idCP_Pedido
    join t_ordemServico os on os.idOS = pos.idPOS_OS
    join t_status_os st on st.idStatus_os = os.Status_OS_id
order by Nome_cliente;

-- Total de fornecedores
select count(*) from t_fornecedor;