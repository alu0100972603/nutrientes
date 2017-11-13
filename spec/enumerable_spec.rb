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

end

