class Alimento_concreto < Alimento
    
    def initialize (grupo,nombre,proteinas,glucidos,grasas)
        super(nombre,proteinas,glucidos,grasas)
        @grupo = grupo
    end
    
end
