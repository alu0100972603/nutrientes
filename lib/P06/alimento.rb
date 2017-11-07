class Alimento


	attr_reader :nombre, :proteinas, :glucidos, :grasas
	
	def initialize(nombre,proteinas,glucidos,grasas)
		@nombre = nombre
		@proteinas = proteinas
		@glucidos = glucidos
		@grasas = grasas
		@cal
	end

	def to_s
		print "El alimento ",@nombre," tiene ",@proteinas," gramos de proteínas, ",@glucidos," gramos de glúcidos y ",@grasas," gramos de grasas"
		puts
	end

	def formateado
		print "Nombre: ",@nombre,"\t","Proteínas: ",@proteinas,"\t","Glúcidos: ",@glucidos,"\t","Grasas: ",@grasas
		puts
	end

	def calorias
		@cal = (4*@proteinas)+(4*@glucidos)+(9*@grasas)
	end

end
