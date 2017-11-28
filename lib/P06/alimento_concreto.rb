# Esta clase es una clase heredada de alimento que contiene
# también el grupo del alimento.
# Se ha incluido el módulo Comparable

class Alimento_concreto < Alimento

    include Comparable

    attr_accessor :grupo
    
    # Se asigna el grupo del alimento y los otros datos del
    # alimento se le pasa al initialize de Alimento
    def initialize (grupo,nombre,proteinas,glucidos,grasas)
        super(nombre,proteinas,glucidos,grasas,[])
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

# Aqui abro la clase array y creo los metodos de ordenacion
# for y each. El sort ya lo tiene la clase
class Array
    
    # Este es el metodo de ordenacio for. Utilizo el
    # metodo burbuja.
    def ordenar_for
        
        @vector=self
        
        for i in (0..@vector.size-1)
            for j in (0..@vector.size-1)
                if j+1 != @vector.size
                    if @vector[j+1] < @vector[j]
                        @vector[j], @vector[j+1] = @vector[j+1], @vector[j]
                    end
                end
            end
        end
        @vector
    end

    #Este es el metodo de ordenacion each.
    def ordenar_each
        
        @ordenado= []
        aux_self=self.clone
        
        (0..self.size-1).each{|i| min=aux_self.min; @ordenado << min; aux_self.delete(min)}
        
        @ordenado
    end
end
