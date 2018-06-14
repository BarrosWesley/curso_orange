Dado("que estou na pagina Principal") do
   visit 'http://opensource.demo.orangehrmlive.com'
  end
  
  Quando("informo usuario {string} incorreto e senha {string}") do |string, string2|
    @usuario = string
    @senha = string2
    find('#txtUsername').set @usuario
    find('#txtPassword').set @senha
    find('#btnLogin').click
  end
  
  Entao("o sistema apresenta a mensagem {string}") do |msg|
    @msg = msg
    expect(page).to have_content @msg
  end
  
  Quando("informo usuario {string} incorreto e a senha {string} incorreta") do |string3, string4|
    @usuario3 = string3
    @senha4 =  string4
    find('#txtUsername').set @usuario3
    find('#txtPassword').set @senha4
    find('#btnLogin').click
  end
  
  Quando("informo usuario {string} e senha {string}") do |string5, string6|
    @usuario5 = string5
    @senha5 =  string6
    find('#txtUsername').set @usuario5
    find('#txtPassword').set @senha5
    find('#btnLogin').click
  end
  
  Entao("o sistema apresenta a tela de RH") do
    @titulo = 'Dashboard'
    expect(page).to have_content @titulo
  end
  