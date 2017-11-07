require "spec_helper"

RSpec.describe "Existencia de datos" do

	before :each do

		@alimento1=Alimento_concreto.new("Huevos,lacteos y helados","Huevo",14.1,0.0,19.5)
		@alimento2=Alimento_concreto.new("Huevos,lacteos y helados","Leche_vaca",3.3,4.8,3.2)
		@alimento3=Alimento_concreto.new("Huevos,lacteos y helados","Yogurt",3.8,4.9,3.8)

		@lista=List.new()
	end	

	it "Debe existir un nodo con su dato,su siguiente y su previo" do
		@lista.push_head(@alimento1)
		@lista.push_head(@alimento2)
		@lista.push_head(@alimento3)


		expect(@lista.get_value(@alimento2)).to eq(@alimento2)
		expect(@lista.get_next(@alimento2)).to eq(@lista.head)
		expect(@lista.get_prev(@alimento2)).to eq(@lista.tail)

	end

end
