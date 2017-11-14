require "spec_helper"

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

	it "Comprobando el metodo all? con un bloque vacio" do
		@lista.push_others([@huevo,@leche,@yogurt])
		@lista2=List.new()
		@lista2.push_head(nil)
		expect(@lista.all?).to be(true)
		expect(@lista2.all?).to be(false)
	end

	it "Comprobando el metodo any?" do
		@lista.push_others([@huevo,@leche,@yogurt,nil])
		@lista2=List.new()
		@lista2.push_head(nil)
		expect(@lista.any?).to be(true)
		expect(@lista2.any?).to be(false)
	end

	it "Comprobando el metodo detect" do
		@lista.push_others([@huevo,@leche,@yogurt])
		expect(@lista.detect{|i| i==@leche}).to eq(@leche)
		expect(@lista.find{|i| i==@yogurt}).to eq(@yogurt)
	end

	it "Comprobando el metodo min" do
		@lista.push_others([@huevo,@leche,@yogurt])
		expect(@lista.min).to eq(@leche)
	end

        it "Comprobando el metodo max" do
                @lista.push_others([@huevo,@leche,@yogurt])
                expect(@lista.max).to eq(@huevo)
        end

	it "Comprobando el metodo sort" do
		@lista.push_others([@huevo,@leche,@yogurt])
                @lista2=List.new()
		@lista2.push_others([@leche,@yogurt,@huevo])
		expect(@lista.sort == @lista2)
	end

        it "Comprobando el metodo collect" do
                @lista.push_others([@huevo,@leche,@yogurt])
                @lista2=List.new()
                @lista2.push_others([@huevo,@huevo,@huevo])
		@lista.collect{|i| @huevo}
                expect(@lista == @lista2)
        end



end

