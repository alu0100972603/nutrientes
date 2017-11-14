# Esta clase es una clase heredada de alimento que contiene
# también el grupo del alimento.
# Se ha incluido el módulo Comparable

class Alimento_concreto < Alimento

    include Comparable

    attr_accessor :grupo
    
    # Se asigna el grupo del alimento y los otros datos del
    # alimento se le pasa al initialize de Alimento
    def initialize (grupo,nombre,proteinas,glucidos,grasas)
        super(nombre,proteinas,glucidos,grasas)
        @grupo = grupo
    end

    # Este metodo se encarga de realizar las
    # comparaciones.
    def <=>(another)
	calorias <=> another.calorias
    end

    # Este metodo se encarga de mostrar al alimento
    # por pantalla.
    def to_s
        "Grupo: #{@grupo}\t" + "Nombre: #{@nombre}\t" + "Proteínas: #{@proteinas}\t" + "Glúcidos: #{@glucidos}\t" + "Grasas: #{@grasas}\t" + "Calorias: #{calorias}"
    end
    
end
