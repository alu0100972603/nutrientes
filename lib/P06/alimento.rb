class Alimento

	attr_reader :nombre, :proteinas
	
	def initialize(nombre,proteinas,glucidos,grasas)
		@nombre = nombre
		@proteinas = proteinas
		@glucidos = glucidos
		@grasas = grasas
	end
end
