require "spec_helper"

RSpec.describe P06 do

	it "has a version number" do
		expect(P06::VERSION).not_to be nil
	end

	it "Tengo una clase alimento" do
		expect(Alimento.is_a?Class).to be (true)
	end

	before :all do
		@leche = Alimento.new("leche vaca",3.3,4.8,3.2)
		@yogurt = Alimento.new("yogurt",3.8,4.9,3.8)
		@cerdo = Alimento.new("cerdo",21.5,0.0,6.3)
		@ternera = Alimento.new("ternera",21.1,0.0,3.1)
		@pollo = Alimento.new("pollo",20.6,0.0,5.6)
	end

	#Compruebo que existe un nombre, cantidad de proteina,glucidos y grasas.
	#Para ello compruebo el tipo de variables que son, ya que asi compruebo que estan instanciados.

	it "El alimento tiene un nombre" do
		expect(@leche.nombre.is_a?String).to be(true)
	end

	it "El alimento tiene proteinas" do
		expect(@leche.proteinas.is_a?Numeric).to be(true)
	end

	it "El alimento tiene glucidos" do
		expect(@leche.glucidos.is_a?Numeric).to be(true)
	end

	it "El alimento tiene grasas" do
		expect(@leche.grasas.is_a?Numeric).to be(true)
	end

end
