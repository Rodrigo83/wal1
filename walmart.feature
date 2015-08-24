# language: pt
# encoding: UTF-8

Funcionalidade: Navegar pelas categorias do Walmart.com

Cenário: Verificar Funcionalidade do site

    Dado que estou no site Walmart.com 
	E preencho o campo pesquisa "tv"
	E clico em procurar
	E clico em tv led sansung
	E clico em adicionar ao carrinho
	E clico em continuar
	E clico em comprar
	Então devo ver o produto no carrinho como: "TV LED 40” Samsung"
