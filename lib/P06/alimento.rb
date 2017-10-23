class Alimento

	attr_reader :nombre
	
	def initialize(nombre,proteinas,glucidos,grasas)
		@nombre = nombre
		@proteinas = proteinas
		@glucidos = glucidos
		@grasas = grasas
	end
end
