# language: pt
# encoding: UTF-8

Funcionalidade: Navegar pelas categorias do Walmart.com

Cenário: Verificar Funcionalidade do site

    Dado que estou no site Walmart.com 
	E preencho o campo pesquisa "tv"
	E clico em procurar
	E clico em tv led samsung
	E clico em adicionar ao carrinho
	E clico em continuar
	E clico em comprar
	Então devo ver o produto no carrinho como: "Smart TV LED 3D Ultra"
