require "spec_helper"

RSpec.describe "Existencia de datos" do

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

RSpec.describe "Existencia de metodos que devuelven valor" do

	before :all do
		@leche = Alimento.new("leche vaca",3.3,4.8,3.2)
		@yogurt = Alimento.new("yogurt",3.8,4.9,3.8)
                @cerdo = Alimento.new("cerdo",21.5,0.0,6.3)
                @ternera = Alimento.new("ternera",21.1,0.0,3.1)
                @pollo = Alimento.new("pollo",20.6,0.0,5.6)

	end

	#Se van a cumplir todos porque ya, anteriormente creamos attr_reader para comprobar
	#que el alimento tenia nombre, proteinas, glucidos y grasas

	it "Existe metodo para devolver el nombre" do
		expect(@leche.nombre).to eq("leche vaca")
	end

	it "Existe metodo para devolver cantidad proteinas" do
		expect(@leche.proteinas).to eq(3.3)
	end

	it "Existe metodo para devolver cantidad glucidos" do
                expect(@leche.glucidos).to eq(4.8)
        end

	it "Existe metodo para devolver cantidad grasas" do
                expect(@leche.grasas).to eq(3.2)
        end

	#Existe metodo que devuelva el alimento formateado

	it "Existe metodo para devolver alimento formateado" do
		expect(@leche.respond_to?("formateado")).to be(true)
	end

	#Metodo que devuelve el valor energético
	it "Existe metodo que devuelve el valor energetico alimento" do
		expect(@leche.calorias).to eq(61.2)
		expect(@yogurt.calorias).to eq(69)
		expect(@cerdo.calorias).to eq(142.7)
		expect(@ternera.calorias).to eq(112.30000000000001)
		expect(@pollo.calorias).to eq(132.8)

	end

end
