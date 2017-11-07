require "spec_helper"

RSpec.describe "Existencia de datos" do

	before :each do

		@alimento1=Alimento_concreto.new("Huevos,lacteos y helados","Huevo",14.1,0.0,19.5)
		@alimento2=Alimento_concreto.new("Huevos,lacteos y helados","Leche_vaca",3.3,4.8,3.2)
		@alimento3=Alimento_concreto.new("Huevos,lacteos y helados","Yogurt",3.8,4.9,3.8)

	end

	it "Pertenece a la clase Class" do
		expect(Alimento_concreto.is_a?Class).to be(true)
	end

	it "Es un objeto de Alimento concreto" do
		expect(@alimento1.is_a?Alimento_concreto).to be(true)
                expect(@alimento2.is_a?Alimento_concreto).to be(true)
                expect(@alimento3.is_a?Alimento_concreto).to be(true)
	end

	it "Es una clase hija de Alimento" do
		expect(@alimento1.is_a?Alimento).to be(true)
                expect(@alimento2.is_a?Alimento).to be(true)
                expect(@alimento3.is_a?Alimento).to be(true)
	end

	it "Alimento concreto pertenece a un grupo" do
		expect(@alimento1.respond_to?("grupo")).to be(true)
                expect(@alimento2.respond_to?("grupo")).to be(true)
                expect(@alimento3.respond_to?("grupo")).to be(true)
	end

end
