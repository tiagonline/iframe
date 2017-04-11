#language: pt

@hooks_login
@login

Funcionalidade: Login PCMS

Eu, como usuário do PCMS
Desejo realizar Login
Para que eu possa ter acesso ao sistema

Cenario: Login com sucesso

    Dado que eu acesse a página de Login
    Quando eu informar os campos obrigatórios
    E Clicar em Logar
    Entao o meu Login e efetuado com sucesso
