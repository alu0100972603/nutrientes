require "spec_helper"

RSpec.describe "Existencia de datos" do

	before :each do
		@yogurt = Alimento.new("yogurt",3.8,4.9,3.8,[[6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4],
                            				     [4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9]])

		@chocolate = Alimento.new("pollo",20.6,0.0,5.6,[[6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1],
                               					[4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9]])

		@glucosa = Alimento.new("glucosa",3,6,2,[[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
            						[6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]])

		@IG_yogurt = ((@yogurt.AIBC.zip(@glucosa.AIBC))).map{|i| (i.reduce(:/)*100)}.reduce{|j,k| j/2 + k/2}.round(2)
		@IG_chocolate = ((@chocolate.AIBC.zip(@glucosa.AIBC))).map{|i| (i.reduce(:/)*100)}.reduce{|j,k| j/2 + k/2}.round(2)
	end

	it "Existe la funcion AIBC" do
		expect(@yogurt.respond_to?("AIBC")).to be(true)
		expect(@chocolate.respond_to?("AIBC")).to be(true)
		expect(@glucosa.respond_to?("AIBC")).to be(true)
	end

	it "El valor del IG es correcto" do
		expect(@IG_yogurt).to eq(41.38)
		expect(@IG_chocolate).to eq(13.33)
	end

end
