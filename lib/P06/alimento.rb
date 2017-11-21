# Esta clase permite representar a un alimento
# con sus porteinas, glucidos y grasas correspondientes. 
# Tambien se puede sacar las calorias de los alimentos
# con las proteinas, glucidos y grasas.

class Alimento


	attr_reader :nombre, :proteinas, :glucidos, :grasas

	# Se asigna el nombre del alimento, las proteinas, 
	# los glucidos y las grasas.
	def initialize(nombre,proteinas,glucidos,grasas,individuos)
		@nombre = nombre
		@proteinas = proteinas
		@glucidos = glucidos
		@grasas = grasas
		@cal
		@individuos = individuos
	end

	# Este es el metodo to_s que muestra al alimento por pantalla.
	def to_s
		print "El alimento ",@nombre," tiene ",@proteinas," gramos de proteínas, ",@glucidos," gramos de glúcidos y ",@grasas," gramos de grasas"
		puts
	end

	# Este metodo muestra al alimento formateado.
	def formateado
		print "Nombre: ",@nombre,"\t","Proteínas: ",@proteinas,"\t","Glúcidos: ",@glucidos,"\t","Grasas: ",@grasas
		puts
	end

	# Este metodo calcula las calorias del alimento
	# según las proteinas, los glucidos y las grasas
	# del alimento.
	def calorias
		@cal = (4*@proteinas)+(4*@glucidos)+(9*@grasas)
	end

	# Este metodo lo que hace es devolverme el valor correspondiente
	# dependiendo de la posicion en la que me encuentre en el vector,
	# esto lo hago para que no me acceda a la posicion -1.
	def neg(pos,gluc)
		pos < 0 ? gluc[0] : gluc[pos]
	end

	# Este metodo me calcula el AIBC. Se ha aplicado la programacion
	# funcional.
	def AIBC
		@individuos.map{|i| g=i.first; pos=-1; i.map{|j| prev=neg(pos,i); pos=pos+1; (((j-g)+(prev-g))*2.5)}.reduce(:+).round(2)}
	end

end
