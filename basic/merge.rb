pessoa = {nome: "Stella", sobrenome: "Oliveira"}
print pessoa.merge(sobrenome: "Correia")
print
print pessoa
print
print pessoa.merge!(idade: 28)
print pessoa

#O metodo merge altera o campo caso ja exista, ou cria outro caso não exista
#O bang method tb se aplica ao merge. xxx.merge(chave : valor)!

