#language: pt

# @hooks_meu_trabalho
# @hooks_cadastrar_demanda
@cadastrar_demanda

Funcionalidade: Atividade Cadastrar Demanda - CRD/CRCA Diversas

Eu, como usuário do PCMS
quero cadastrar demanda de CRD/CRCA Diversas

Contexto: Pesquisar a atividade na tela Meu Trabalho

   Dado que eu acesse a página Meu Trabalho
   Quando eu informar o protocolo na pesquisa
   Entao eu clico na atividade Cadastrar Demanda

Cenario: Cadastrar Demanda - CRD/CRCA Diversas

    Dado que eu estou dentro da atividade Cadastrar Demanda - CRD/CRCA Diversas
    Quando preencho todos os dados da tela Cadastrar Demanda - CRD/CRCA Diversas
    Entao clico em Confirmar Cadastro da tela Cadastrar Demanda - CRD/CRCA Diversas
