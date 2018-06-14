#language: pt
@Login

Funcionalidade: Login
SENDO um usuario
EU QUERO logar no sistema com meus dados
PARA que eu possa acessar o sistema de RH


Contexto: Tela Principal
    Dado que estou na pagina Principal


Cenario: Credenciais Invalidas
Quando informo usuario "12345" incorreto e senha "12345"
Entao o sistema apresenta a mensagem "Invalid credentials"


Cenario: Usuario nao informado
Quando informo usuario "" incorreto e a senha "admin" incorreta
Entao o sistema apresenta a mensagem "Username cannot be empty"

Cenario: Senha nao informada
Quando informo usuario "admin" incorreto e senha ""
Entao o sistema apresenta a mensagem "Password cannot be empty"

Cenario: Login com sucesso
Quando informo usuario "Admin" e senha "admin"
Entao o sistema apresenta a tela de RH
