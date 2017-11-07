class Alimento_concreto < Alimento

    attr_accessor :grupo
    
    def initialize (grupo,nombre,proteinas,glucidos,grasas)
        super(nombre,proteinas,glucidos,grasas)
        @grupo = grupo
    end

    def to_s
        "Grupo: #{@grupo}\t" + "Nombre: #{@nombre}\t" + "Proteínas: #{@proteinas}\t" + "Glúcidos: #{@glucidos}\t" + "Grasas: #{@grasas}\t" + "Calorias: #{calorias}"
    end
    
end
