Nodo = Struct.new(:value, :next, :prev)

class List

   attr_accessor :head, :tail
   
    def initialize
       @head = nil
       @tail = nil
    end
    
    def push_head (nodo)
        if @head == nil
            @head = Nodo.new(nodo,nil,nil)
            @tail = @head
        else
            @head.next = Nodo.new(nodo,nil,@head)
            @head = @head.next
        end
    end

    def get_value(value)
        if @head == nil   #Comprobamos si la lista no esta vacía
            raise RuntimeError, "Lista vacía, no se puede extraer nodo"
        else
		    i = @tail
		    @valor=nil
		    while i != nil
		        if i.value == value
		            @valor = i.value
		        end
		        i = i.next
		    end
        end
        @valor
    end
    
    def get_next(value)
        if @head == nil   #Comprobamos si la lista no esta vacía
            raise RuntimeError, "Lista vacía, no se puede extraer nodo"
        else
		    i = @tail
		    @valor = nil
		    while i != nil
		        if i.value == value
		            @valor = i.next
		        end
		        i = i.next
		    end
        end
        @valor
    end
    
    def get_prev(value)
        if @head == nil   #Comprobamos si la lista no esta vacía
            raise RuntimeError, "Lista vacía, no se puede extraer nodo"
        else
		    i = @tail
		    @valor = nil
		    while i != nil
		        if i.value == value
		            @valor = i.prev
		        end
		        i = i.next
		    end
        end
        @valor
    end

    def size
	size = 0
	i = @tail
	while i != nil
		i = i.next
		size+=1
	end
	return size
    end

    def push_others(values)
        for i in (0..values.size-1)
	        push_head(values[i])
        end
    end


end
