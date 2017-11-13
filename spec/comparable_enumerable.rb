require "spec_helper"

RSpec.describe "Comparable" do

	before :each do
		@huevo=Alimento_concreto.new("Huevos, lacteos y helados","Huevo",14.1,0.0,19.5)
		@leche=Alimento_concreto.new("Huevos, lacteos y helados","Leche_vaca",3.3,4.8,3.2)
		@yogurt=Alimento_concreto.new("Huevos, lacteos y helados","Yogurt",3.8,4.9,3.8)
		@leche2=Alimento_concreto.new("Huevo, lacteos y helados","Leche_vaca2",3.3,4.8,3.2)
	end

	it "Comprobando que calorias de leche de vaca es menor que calorias de huevo" do
		expect(@leche<@huevo).to be(true)
	end

	it "Comprobando que calorias de yogurt es mayor que calorias de leche" do
		expect(@yogurt>@leche).to be(true)
	end

	it "Comprobando que calorias de leche de vaca es igual a calorias de leche de vaca2" do
		expect(@leche==@leche2).to be(true)
	end

end

RSpec.describe "Enumerable" do

	before :each do
		@huevo=Alimento_concreto.new("Huevos, lacteos y helados","Huevo",14.1,0.0,19.5)
                @leche=Alimento_concreto.new("Huevos, lacteos y helados","Leche_vaca",3.3,4.8,3.2)
                @yogurt=Alimento_concreto.new("Huevos, lacteos y helados","Yogurt",3.8,4.9,3.8)

		@lista=List.new()	
	end

	it "Se puede contar el numero de elementos de la lista" do
		@lista.push_others([@huevo,@leche,@yogurt])
		expect(@lista.count).to eq(3)
	end

end
