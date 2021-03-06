#language: en
Feature: Cadastro De Usuario e login

Criar Cadstro de usuario no sistema Advantage Online Shopping

Background:
   Given que estou acessando a aplicação
   When clico no botão USER
   
@Cadastro_usuario
Scenario Outline: Cadastrar usuario com sucesso 
	And Clico no botão CREATE NEW ACCOUNT
	And Preencha os Campos "<Login>" e "<Senha>"
	And Preencha o campo email
	And clique no botão I Agree e no botão Register
	Then o sistema apresenta o usuário logado 
	
	Examples:	 
      | Login       | Senha    |
      | Jcunha178f2 | A243005b |
      
   
@Login_usuario
Scenario Outline: login de usuario com sucesso 
	And Informe os Campos "<Login>" e "<Senha>" 
	And clico no botão SIGN IN 
	Then o sistema apresenta o usuário que efetuou o login 
	
	Examples: 
		| Login       | Senha    |
		| Jcunha03222 | A243005b |