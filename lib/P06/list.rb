# Aqui estamos declarando la clase Nodo,
# pero lo hacemos mediante un Struct,
# que nos incluye ya los mixin Comparable y Enumerable.

Nodo = Struct.new(:value, :next, :prev)

# Esta clase permite representar una lista
# doblemente enlazada.
# Se ha incluido el módulo Enumerable.

class List

    include Enumerable
    attr_accessor :head, :tail
   
    # Se asignan el valor del head y el tail de
    # la lista, que inicialmente es nil.
    def initialize
       @head = nil
       @tail = nil
    end
    
    # Inseta un valor por la cabeza de la lista.
    def push_head (nodo)
        if @head == nil
            @head = Nodo.new(nodo,nil,nil)
            @tail = @head
        else
            @head.next = Nodo.new(nodo,nil,@head)
            @head = @head.next
        end
    end

    # Devuelve el valor de un nodo que le
    # pasamos por parametros.
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
    
    # Nos devuelve el nodo siguiente de un
    # nodo que le pasamos por parámetros.
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
    
    # Devuelve el nodo previo al nodo
    # que pasamos por parámetros.
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

    # Este metodo nos devuelve el tamaño
    # de la lista.
    def size
	size = 0
	i = @tail
	while i != nil
		i = i.next
		size+=1
	end
	return size
    end

    # Este metodo nos permite insertar varios
    # valores a la lista.
    # Estos valores se insertan por el head.
    def push_others(values)
        for i in (0..values.size-1)
	        push_head(values[i])
        end
    end

    # Este metodo nos permite extraer el
    # tail de la lista.
    def pop_tail
        
        extraido = false
        
        if @head == nil   #Comprobamos si la lista no esta vacía
			raise RuntimeError, "Lista vacía, no se puede extraer nodo"
		else
		    extraido = true
			if @head == @tail
				@head = nil
				@tail = nil
			else
				@tail = @tail.next
				@tail.prev = nil
			end
        end
        return extraido
    end

    # Este metodo nos permite extraer
    # el head de la lista.
    def pop_head
        extraido = false
        if @head == nil   #Comprobamos si la lista no esta vacía
			raise RuntimeError, "Lista vacía, no se puede extraer nodo"
		else
		    extraido = true
			if @head == @tail
				@head = nil
				@tail = nil
			else
				@head = @head.prev
                @head.next = nil
			end
        end
        
        return extraido
    end

    # Este metodo es el each que van a
    # utilizar los metodos del módulo
    # Enumerable, pero esta acomodado
    # a nuestra clase.
    def each
	i = @tail
	while i != nil
	    yield i.value
	    i = i.next
	end
    end

end
