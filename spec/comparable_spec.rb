require "spec_helper"

RSpec.describe "Comparable" do

	before :each do
		@huevo=Alimento_concreto.new("Huevos, lacteos y helados","Huevo",14.1,0.0,19.5)
		@leche=Alimento_concreto.new("Huevos, lacteos y helados","Leche_vaca",3.3,4.8,3.2)
		@yogurt=Alimento_concreto.new("Huevos, lacteos y helados","Yogurt",3.8,4.9,3.8)
	end

	it "Comprobando que calorias de leche de vaca es menor que calorias de huevo" do
		expect(@leche<@huevo).to be(true)
	end

end
