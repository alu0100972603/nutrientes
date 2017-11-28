require "spec_helper"

RSpec.describe "Ordenacion de array de alimento" do

	before :each do
		@huevo = Alimento_concreto.new("Huevos,lacteos y helados","Huevo",14.1,0.0,19.5)
		@leche = Alimento_concreto.new("Huevos,lacteos y helados","Leche",3.3,4.8,3.8)
		@yogurt = Alimento_concreto.new("Huevos,lacteos y helados","Yogurt",3.8,4.9,3.8)

		@cerdo = Alimento_concreto.new("Carnes y derivados","Cerdo",21.5,0.0,6.3)
		@ternera = Alimento_concreto.new("Carnes y derivados","Ternera",21.1,0.0,3.1)
		@pollo = Alimento_concreto.new("Carnes y derivados","Pollo",20.6,0.0,5.6)

		@bacalao = Alimento_concreto.new("Pescados y mariscos","Bacalao",17.7,0.0,0.4)
		@atun = Alimento_concreto.new("Pescados y mariscos","Atun",21.5,0.0,15.5)
		@salmon = Alimento_concreto.new("Pescados y mariscos","Salmon",19.9,0.0,13.6)

		@aceite = Alimento_concreto.new("Alimentos grasos","Aceite de oliva",0.0,0.2,99.6)
		@mantequilla = Alimento_concreto.new("Alimentos grasos","Mantequilla",0.7,0.0,83.2)
		@chocolate = Alimento_concreto.new("Alimentos grasos","Chocolate",5.3,47.0,30.0)

		@azucar = Alimento_concreto.new("Alimentos ricos en carbohidratos","Azucar",0.0,99.8,0.0)
		@arroz = Alimento_concreto.new("Alimentos ricos en carbohidratos","Arroz",6.8,77.7,0.6)
		@lentejas = Alimento_concreto.new("Alimentos ricos en carbohidratos","Lentejas",23.5,52.0,1.4)
		@papas = Alimento_concreto.new("Alimentos ricos en carbohidratos","Papas",2.0,15.4,0.1)

		@tomate = Alimento_concreto.new("Verduras y hortalizas","Tomate",1.0,3.5,0.2)
		@cebolla = Alimento_concreto.new("Verduras y hortalizas","Cebolla",1.3,5.8,0.3)
		@calabaza = Alimento_concreto.new("Verduras y hortalizas","Calabaza",1.1,4.8,0.1)

		@manzana = Alimento_concreto.new("Frutas","Manzana",0.3,12.4,0.4)
		@platanos = Alimento_concreto.new("Frutas","Platanos",1.2,21.4,0.2)
		@pera = Alimento_concreto.new("Frutas","Pera",0.5,12.7,0.3)

		@alimento = [@huevo,@leche,@yogurt,@cerdo,@ternera,@pollo,@bacalao,@atun,@salmon,@aceite,@mantequilla,@chocolate,@azucar,@arroz,@lentejas,@papas,@tomate,@cebolla,@calabaza,@manzana,@platanos,@pera]
		@ordenado = [@tomate,@calabaza,@cebolla,@manzana,@pera,@leche,@yogurt,@papas,@bacalao,@platanos,@ternera,@pollo,@cerdo,@salmon,@atun,@huevo,@lentejas,@arroz,@azucar,@chocolate,@mantequilla,@aceite]
	end

	it "Existe metodo de ordenacion for" do
		expect(@alimento.respond_to?("ordenar_for")).to be(true)
	end

end
