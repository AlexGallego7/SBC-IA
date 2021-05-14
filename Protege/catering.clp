; Fri May 14 18:29:19 CEST 2021
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot alcoholica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot max_price
;+		(comment "Precio máximo del menu")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot bebida
;+		(comment "Bebida asociada al plato / menú")
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot bebidas_acoholicas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot bebida_por_plato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
;+		(comment "Postre del menu")
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredientes_prohibidos
;+		(comment "Ingredientes prohibidos")
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(single-slot primero
;+		(comment "Primer plato del menu")
		(type INSTANCE)
;+		(allowed-classes Principal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot valoracion
;+		(comment "Rating del menú/plato para el cliente en concreto")
		(type SYMBOL)
		(allowed-values Excelente Bueno Normal Malo P%C3%A9simo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dieta
		(type SYMBOL)
		(allowed-values vegana vegetariana)
		(cardinality 0 2)
		(create-accessor read-write))
	(single-slot min_price
;+		(comment "Precio mínimo del menu")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(single-slot evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot segundo
;+		(comment "Segundo plato del menu")
		(type INSTANCE)
;+		(allowed-classes Principal)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot info_generica
;+		(comment "Información genérica del plato")
		(type SYMBOL)
		(allowed-values Pescado Carne Vegetariano Frio Caliente Arabe Vegano Sopa Pasta Mediterr%C3%A1neo Japon%C3%A9s)
		(create-accessor read-write))
	(multislot combina_bien
;+		(comment "Indica los platos con cuales combina bien.")
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(single-slot persona
		(type INSTANCE)
;+		(allowed-classes Persona)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
;+		(comment "Precio del plato")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precio_max
;+		(comment "Precio máximo del menu")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo
;+		(comment "Tipo de evento")
		(type SYMBOL)
		(allowed-values Familiar Congreso)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot papel
;+		(comment "Possible papel en el menú, si es primero o segundo o puede ser ambos")
		(type SYMBOL)
		(allowed-values Primero Segundo Ambos)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot disponibilidad
;+		(comment "Disponibilidad del ingrediente/plato durante el año")
		(type SYMBOL)
		(allowed-values Primavera Verano Oto%C3%B1o Invierno Total)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot epoca
;+		(comment "Epoca del año en la que se celebra el evento")
		(type SYMBOL)
		(allowed-values Primavera Verano Oto%C3%B1o Invierno)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot comensales
;+		(comment "Numero de comensales que atenderán el evento")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio_min
;+		(comment "Precio mínimo")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot estilo
		(type SYMBOL)
		(allowed-values Clasico Moderno Regional Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot menus_ofrecidos
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 0 3)
		(create-accessor read-write)))

(defclass Evento "Información sobre el evento"
	(is-a USER)
	(role concrete)
	(single-slot comensales
;+		(comment "Numero de comensales que atenderán el evento")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo
;+		(comment "Tipo de evento")
		(type SYMBOL)
		(allowed-values Familiar Congreso)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot epoca
;+		(comment "Epoca del año en la que se celebra el evento")
		(type SYMBOL)
		(allowed-values Primavera Verano Oto%C3%B1o Invierno)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Persona "Información sobre restricciones"
	(is-a USER)
	(role concrete)
	(single-slot precio_min
;+		(comment "Precio mínimo")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot estilo
		(type SYMBOL)
		(allowed-values Clasico Moderno Regional Sibarita)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio_max
;+		(comment "Precio máximo del menu")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dieta
		(type SYMBOL)
		(allowed-values vegana vegetariana)
		(cardinality 0 2)
		(create-accessor read-write))
	(single-slot bebidas_acoholicas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredientes_prohibidos
;+		(comment "Ingredientes prohibidos")
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(single-slot bebida_por_plato
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Menu "Información sobre el menu"
	(is-a USER)
	(role concrete)
	(single-slot valoracion
;+		(comment "Rating del menú/plato para el cliente en concreto")
		(type SYMBOL)
		(allowed-values Excelente Bueno Normal Malo P%C3%A9simo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
;+		(comment "Precio del plato")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot bebida
;+		(comment "Bebida asociada al plato / menú")
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot segundo
;+		(comment "Segundo plato del menu")
		(type INSTANCE)
;+		(allowed-classes Principal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot primero
;+		(comment "Primer plato del menu")
		(type INSTANCE)
;+		(allowed-classes Principal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot postre
;+		(comment "Postre del menu")
		(type INSTANCE)
;+		(allowed-classes Postre)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plato "Información sobre el plato"
	(is-a USER)
	(role abstract)
	(multislot info_generica
;+		(comment "Información genérica del plato")
		(type SYMBOL)
		(allowed-values Pescado Carne Vegetariano Frio Caliente Arabe Vegano Sopa Pasta Mediterr%C3%A1neo Japon%C3%A9s)
		(create-accessor read-write))
	(single-slot precio
;+		(comment "Precio del plato")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot valoracion
;+		(comment "Rating del menú/plato para el cliente en concreto")
		(type SYMBOL)
		(allowed-values Excelente Bueno Normal Malo P%C3%A9simo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ingredientes
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(multislot combina_bien
;+		(comment "Indica los platos con cuales combina bien.")
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(multislot bebida
;+		(comment "Bebida asociada al plato / menú")
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot disponibilidad
;+		(comment "Disponibilidad del ingrediente/plato durante el año")
		(type SYMBOL)
		(allowed-values Primavera Verano Oto%C3%B1o Invierno Total)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Principal "Información sobre el primero o segundo plato"
	(is-a Plato)
	(role concrete)
	(single-slot papel
;+		(comment "Possible papel en el menú, si es primero o segundo o puede ser ambos")
		(type SYMBOL)
		(allowed-values Primero Segundo Ambos)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Postre "Información sobre el postre"
	(is-a Plato)
	(role concrete))

(defclass Bebida "Información sobre la bebida"
	(is-a USER)
	(role concrete)
	(single-slot alcoholica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot precio
;+		(comment "Precio del plato")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot combina_bien
;+		(comment "Indica los platos con cuales combina bien.")
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write)))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot disponibilidad
;+		(comment "Disponibilidad del ingrediente/plato durante el año")
		(type SYMBOL)
		(allowed-values Primavera Verano Oto%C3%B1o Invierno Total)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Sugerencia
	(is-a USER)
	(role concrete)
	(multislot menus_ofrecidos
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 0 3)
		(create-accessor read-write))
	(single-slot evento
		(type INSTANCE)
;+		(allowed-classes Evento)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot persona
		(type INSTANCE)
;+		(allowed-classes Persona)
;+		(cardinality 0 1)
		(create-accessor read-write)))
		
(definstances Instancias

([Azucar] of  Ingrediente

	(disponibilidad Total))

([Chocolate] of  Ingrediente

	(disponibilidad Total))

([CocaCola] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Cordero] of  Ingrediente

	(disponibilidad Total))

([Ensalada] of  Principal

	(combina_bien [SalmonAhumado])
	(disponibilidad Total)
	(info_generica Vegetariano Vegano)
	(ingredientes
		[Lechuga]
		[Zanahoria]
		[Remolacha])
	(papel Primero)
	(precio 5.0))

([Esparrago] of  Ingrediente

	(disponibilidad Primavera))

([Fanta] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Fresa] of  Ingrediente

	(disponibilidad Verano))

([Galleta] of  Ingrediente

	(disponibilidad Total))

([Leche] of  Ingrediente

	(disponibilidad Total))

([Lechuga] of  Ingrediente

	(disponibilidad Total))

([Limon] of  Ingrediente

	(disponibilidad Total))

([Mantequilla] of  Ingrediente

	(disponibilidad Total))

([Melon] of  Ingrediente

	(disponibilidad Verano))

([Naranja] of  Ingrediente

	(disponibilidad Verano))

([Pepino] of  Ingrediente

	(disponibilidad Verano))

([Queso] of  Ingrediente

	(disponibilidad Total))

([Remolacha] of  Ingrediente

	(disponibilidad Oto%C3%B1o))

([Sal] of  Ingrediente

	(disponibilidad Total))

([Salmon] of  Ingrediente

	(disponibilidad Total))

([SalmonAhumado] of  Principal

	(disponibilidad Total)
	(info_generica Pescado)
	(ingredientes
		[Salmon]
		[Limon]
		[Sal])
	(papel Ambos)
	(precio 7.0))

([TartaChocolate] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Chocolate]
		[Galleta]
		[Leche]
		[Mantequilla])
	(precio 2.5))

([TartaQueso] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Galleta]
		[Queso])
	(precio 3.0))

([VinoBlanco] of  Bebida

	(alcoholica TRUE)
	(combina_bien [SalmonAhumado])
	(precio 3.0))

([VinoTinto] of  Bebida

	(alcoholica TRUE)
	(precio 3.0))

([Zanahoria] of  Ingrediente

	(disponibilidad Total))
)

(deftemplate menu
    (slot primero)
    (slot segundo)
    (slot postre)
)

; Comprobar que funciona saca todas las intancias de Bebida
; IMPORTANTE!!! PARA EJECUTAR EN CLIPS:
; (load "PATH/catering.clp")
; (reset)
; (run)

(defrule list
    ?i <- (object (is-a Bebida))
=>
(printout t ?i))
