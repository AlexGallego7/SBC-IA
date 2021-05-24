; Tue May 25 00:12:57 CEST 2021
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
	(single-slot bebidas_alcoholicas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
		(allowed-values Pescado Carne Vegetariano Frio Caliente Arabe Vegano Sopa Pasta Mediterraneo Japones Clasico Moderno Sibarita)
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
	(single-slot tiempo_coccion
		(type SYMBOL)
		(allowed-values Bajo Medio Alto)
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
		(allowed-values Primavera Verano Otono Invierno Total)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot epoca
;+		(comment "Epoca del año en la que se celebra el evento")
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
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
		(allowed-values Primavera Verano Otono Invierno)
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
	(multislot ingredientes_prohibidos
;+		(comment "Ingredientes prohibidos")
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(create-accessor read-write))
	(single-slot bebidas_alcoholicas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
		(allowed-values Pescado Carne Vegetariano Frio Caliente Arabe Vegano Sopa Pasta Mediterraneo Japones Clasico Moderno Sibarita)
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
	(single-slot tiempo_coccion
		(type SYMBOL)
		(allowed-values Bajo Medio Alto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot bebida
;+		(comment "Bebida asociada al plato / menú")
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot disponibilidad
;+		(comment "Disponibilidad del ingrediente/plato durante el año")
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno Total)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Principal "Información sobre el primero o segundo plato"
	(is-a Plato)
	(role concrete)
	(pattern-match reactive)
	(single-slot papel
;+		(comment "Possible papel en el menú, si es primero o segundo o puede ser ambos")
		(type SYMBOL)
		(allowed-values Primero Segundo Ambos)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Postre "Información sobre el postre"
	(is-a Plato)
	(role concrete)
	(pattern-match reactive))

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
	(role concrete))

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

; Tue May 25 00:12:57 CEST 2021
; 
;+ (version "3.5")
;+ (build "Build 663")

([Aceite+de+oliva] of  Ingrediente
)

([Agua] of  Bebida

	(precio 1.0))

([Ajo] of  Ingrediente
)

([Alga+Nori] of  Ingrediente
)

([Arroz] of  Ingrediente
)

([Azucar] of  Ingrediente
)

([Bacalao] of  Ingrediente
)

([Bechamel] of  Ingrediente
)

([Brownie] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Galleta]
		[Harina]
		[Huevo]
		[Leche]
		[Mantequilla]
		[Nata])
	(precio 6.0)
	(tiempo_coccion Medio))

([Cacao] of  Ingrediente
)

([Cafe] of  Ingrediente
)

([Calamares] of  Ingrediente
)

([Caldo+de+carne] of  Ingrediente
)

([Caldo+de+pescado] of  Ingrediente
)

([Calsotada] of  Principal

	(combina_bien
		[Croquetas]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Pollo+al+Ast]
		[Sopa+de+miso])
	(disponibilidad Total)
	(info_generica Vegetariano Caliente Mediterraneo Clasico Vegano)
	(ingredientes
		[Salsa+romesco]
		[Calsots])
	(papel Segundo)
	(precio 17.0)
	(tiempo_coccion Medio))

([Calsots] of  Ingrediente
)

([Canela] of  Ingrediente
)

([Carne+picada] of  Ingrediente
)

([Cebolla] of  Ingrediente
)

([Cheesecake] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Galleta]
		[Queso])
	(precio 3.0)
	(tiempo_coccion Bajo))

([Chocolate] of  Ingrediente
)

([Choriozo] of  Ingrediente
)

([Cilantro] of  Ingrediente
)

([CocaCola] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Cordero] of  Ingrediente
)

([Crema+catalana] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Huevo]
		[Leche]
		[Limon]
		[Canela])
	(precio 6.0)
	(tiempo_coccion Medio))

([Creppe] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Chocolate]
		[Harina]
		[Huevo]
		[Leche]
		[Mantequilla])
	(precio 7.0)
	(tiempo_coccion Medio))

([Croquetas] of  Principal

	(combina_bien
		[Calsotada]
		[Ensalada]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Pizza+4+quesos]
		[Pollo+al+Ast]
		[Sopa+de+miso]
		[Tortilla+de+patatas])
	(disponibilidad Total)
	(info_generica Carne Caliente Mediterraneo Clasico Moderno)
	(ingredientes
		[Carne+picada]
		[Pan+rallado]
		[Bechamel])
	(papel Primero)
	(precio 7.0)
	(tiempo_coccion Medio))

([Curry] of  Ingrediente
)

([Cuscus] of  Principal

	(combina_bien
		[Hamburguesa]
		[Ensalada]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Harira]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Tortilla+de+patatas]
		[Brownie]
		[Cheesecake]
		[Crema+catalana]
		[Creppe]
		[Helado+de+fresa]
		[Tarta+de+chocolate]
		[Trufas+de+chocolate])
	(disponibilidad Total)
	(info_generica Arabe Vegetariano Clasico)
	(ingredientes
		[Semola]
		[Caldo+de+carne]
		[Zanahoria]
		[Lechuga]
		[Garbanzos]
		[Cebolla]
		[Aceite+de+oliva])
	(papel Segundo)
	(precio 15.0)
	(tiempo_coccion Alto))

([Datiles] of  Ingrediente
)

([Dulce+de+leche] of  Ingrediente
)

([Ensalada] of  Principal

	(combina_bien
		[Salmon+ahumado]
		[Croquetas]
		[Falafel]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Calsotada]
		[Pizza+4+quesos]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Tortilla+de+patatas]
		[Brownie]
		[Cheesecake]
		[Crema+catalana]
		[Creppe]
		[Helado+de+fresa]
		[Mochi]
		[Tarta+de+chocolate]
		[Torrijas]
		[Trufas+de+chocolate])
	(disponibilidad Total)
	(info_generica Vegetariano Vegano Clasico)
	(ingredientes
		[Lechuga]
		[Zanahoria]
		[Remolacha])
	(papel Primero)
	(precio 5.0)
	(tiempo_coccion Bajo))

([Esparrago] of  Ingrediente
)

([Falafel] of  Principal

	(combina_bien
		[Calsotada]
		[Ensalada]
		[Gambas+al+ajillo]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Sushi]
		[Tortilla+de+patatas]
		[Brownie]
		[Crema+catalana]
		[Creppe]
		[Mochi]
		[Tarta+de+chocolate]
		[Trufas+de+chocolate])
	(disponibilidad Total)
	(info_generica Arabe Vegano Moderno Vegetariano Moderno)
	(ingredientes
		[Salsa+de+yogur]
		[Garbanzos]
		[Curry]
		[Ajo]
		[Perejil])
	(papel Ambos)
	(precio 7.0)
	(tiempo_coccion Medio))

([Fanta] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Fideos] of  Ingrediente
)

([Fideos+Ramen] of  Ingrediente
)

([Fideos+Udon] of  Ingrediente
)

([Fresa] of  Ingrediente
)

([Galleta] of  Ingrediente
)

([Gambas] of  Ingrediente
)

([Gambas+al+ajillo] of  Principal

	(combina_bien
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Ramen]
		[Sopa+de+miso]
		[Sushi]
		[Brownie]
		[Cheesecake]
		[Crema+catalana]
		[Creppe]
		[Helado+de+fresa]
		[Mochi]
		[Tarta+de+chocolate]
		[Torrijas]
		[Trufas+de+chocolate])
	(disponibilidad Total)
	(info_generica Caliente Mediterraneo Sibarita Moderno)
	(ingredientes
		[Ajo]
		[Perejil]
		[Gambas])
	(papel Segundo)
	(precio 8.0)
	(tiempo_coccion Medio))

([Garbanzos] of  Ingrediente
)

([Gazpacho] of  Principal

	(combina_bien
		[Calsotada]
		[Calsotada]
		[Falafel]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Pizza+4+quesos]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Tortilla+de+patatas])
	(disponibilidad Verano)
	(info_generica Vegetariano Frio Mediterraneo Moderno)
	(ingredientes
		[Ajo]
		[Cebolla]
		[Pepino]
		[Sal]
		[Zanahoria]
		[Tomate])
	(papel Primero)
	(precio 9.0)
	(tiempo_coccion Bajo))

([Hamburguesa] of  Principal

	(combina_bien
		[Calsotada]
		[Croquetas]
		[Cuscus]
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Harira]
		[Pizza+4+quesos]
		[Sopa+de+miso]
		[Tortilla+de+patatas])
	(disponibilidad Total)
	(info_generica Carne Caliente Mediterraneo Moderno Moderno)
	(ingredientes
		[Queso]
		[Lechuga]
		[Pepino]
		[Huevo]
		[Carne+picada])
	(papel Ambos)
	(precio 7.0)
	(tiempo_coccion Medio))

([Harina] of  Ingrediente
)

([Harira] of  Principal

	(combina_bien
		[Calsotada]
		[Calsotada]
		[Cuscus]
		[Falafel]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Paella]
		[Pizza+4+quesos]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Tortilla+de+patatas])
	(disponibilidad Invierno)
	(info_generica Arabe Caliente Sopa Carne Clasico)
	(ingredientes
		[Cilantro]
		[Jengibre]
		[Datiles]
		[Pimienta]
		[Cordero]
		[Garbanzos])
	(papel Primero)
	(precio 15.0)
	(tiempo_coccion Alto))

([Helado+de+fresa] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Fresa]
		[Leche])
	(precio 3.0)
	(tiempo_coccion Bajo))

([Huevo] of  Ingrediente
)

([Jengibre] of  Ingrediente
)

([Leche] of  Ingrediente
)

([Lechuga] of  Ingrediente
)

([Limon] of  Ingrediente
)

([Mantequilla] of  Ingrediente
)

([Mejillones] of  Ingrediente
)

([Melon] of  Ingrediente
)

([Mochi] of  Postre

	(disponibilidad Total)
	(info_generica Japones Vegano)
	(ingredientes [Arroz])
	(precio 5.0)
	(tiempo_coccion Bajo))

([Naranja] of  Ingrediente
)

([Nata] of  Ingrediente
)

([Nestea] of  Bebida

	(precio 1.25))

([Oregano] of  Ingrediente
)

([Paella] of  Principal

	(combina_bien
		[Falafel]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Tortilla+de+patatas])
	(disponibilidad Total)
	(info_generica Pescado Caliente Mediterraneo Clasico Moderno)
	(ingredientes
		[Gambas]
		[Arroz]
		[Calamares]
		[Pimenton]
		[Caldo+de+pescado]
		[Mejillones])
	(papel Ambos)
	(precio 15.0)
	(tiempo_coccion Medio))

([Pan] of  Ingrediente
)

([Pan+rallado] of  Ingrediente
)

([Patatas] of  Ingrediente
)

([Pepino] of  Ingrediente
)

([Perejil] of  Ingrediente
)

([Pimenton] of  Ingrediente
)

([Pimienta] of  Ingrediente
)

([Pizza+4+quesos] of  Principal

	(combina_bien
		[Croquetas]
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Ramen]
		[Sopa+de+miso])
	(disponibilidad Total)
	(info_generica Vegetariano Mediterraneo Clasico)
	(ingredientes
		[Aceite+de+oliva]
		[Cebolla]
		[Cilantro]
		[Harina]
		[Huevo]
		[Queso]
		[Queso+mascarpone]
		[Tomate]
		[Perejil]
		[Oregano])
	(papel Segundo)
	(precio 9.0)
	(tiempo_coccion Medio))

([Pollo] of  Ingrediente
)

([Pollo+al+Ast] of  Principal

	(combina_bien
		[Croquetas]
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Paella]
		[Ramen]
		[Sopa+de+miso])
	(disponibilidad Total)
	(info_generica Carne Mediterraneo Clasico)
	(ingredientes
		[Aceite+de+oliva]
		[Ajo]
		[Cebolla]
		[Oregano]
		[Perejil]
		[Pimienta]
		[Sal]
		[Pollo])
	(papel Segundo)
	(precio 14.0)
	(tiempo_coccion Alto))

([Pulpo] of  Ingrediente
)

([Pulpo+a+la+gallega] of  Principal

	(combina_bien
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Paella]
		[Ramen]
		[Sopa+de+miso]
		[Sushi])
	(disponibilidad Verano)
	(info_generica Pescado Caliente Mediterraneo Sibarita Moderno)
	(ingredientes
		[Ajo]
		[Cebolla]
		[Pimenton]
		[Pulpo]
		[Patatas])
	(papel Segundo)
	(precio 17.0)
	(tiempo_coccion Alto))

([Queso] of  Ingrediente
)

([Queso+mascarpone] of  Ingrediente
)

([Ramen] of  Principal

	(combina_bien
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Paella]
		[Pizza+4+quesos]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Sushi])
	(disponibilidad Total)
	(info_generica Carne Japones Caliente Clasico Moderno)
	(ingredientes
		[Cebolla]
		[Carne+picada]
		[Lechuga]
		[Huevo]
		[Sal]
		[Fideos+Ramen])
	(papel Primero)
	(precio 10.0)
	(tiempo_coccion Medio))

([Remolacha] of  Ingrediente
)

([Sal] of  Ingrediente
)

([Salmon] of  Ingrediente
)

([Salmon+ahumado] of  Principal

	(combina_bien
		[Ramen]
		[Croquetas]
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Harira]
		[Ramen]
		[Sushi])
	(disponibilidad Total)
	(info_generica Pescado Japones Moderno Sibarita)
	(ingredientes
		[Salmon]
		[Limon]
		[Sal])
	(papel Segundo)
	(precio 7.0)
	(tiempo_coccion Medio))

([Salsa+de+soja] of  Ingrediente
)

([Salsa+de+yogur] of  Ingrediente
)

([Salsa+picante] of  Ingrediente
)

([Salsa+romesco] of  Ingrediente
)

([Semola] of  Ingrediente
)

([Setas] of  Ingrediente
)

([Soja] of  Ingrediente
)

([Sopa+de+miso] of  Principal

	(combina_bien
		[Calsotada]
		[Gambas+al+ajillo]
		[Hamburguesa]
		[Paella]
		[Pizza+4+quesos]
		[Pollo+al+Ast]
		[Pulpo+a+la+gallega]
		[Salmon+ahumado]
		[Sushi]
		[Tortilla+de+patatas])
	(disponibilidad Total)
	(info_generica Vegano Japones Caliente Sopa Clasico Vegetariano Vegano)
	(ingredientes
		[Soja]
		[Sal]
		[Cebolla]
		[Tofu])
	(papel Primero)
	(precio 7.0)
	(tiempo_coccion Medio))

([Sushi] of  Principal

	(combina_bien
		[Ensalada]
		[Falafel]
		[Gambas+al+ajillo]
		[Paella]
		[Ramen]
		[Salmon+ahumado]
		[Sopa+de+miso]
		[Tortilla+de+patatas])
	(disponibilidad Total)
	(info_generica Pescado Japones Moderno)
	(ingredientes
		[Arroz]
		[Salmon]
		[Alga+Nori])
	(papel Ambos)
	(precio 15.0)
	(tiempo_coccion Medio))

([Tahini] of  Ingrediente
)

([Tarta+de+chocolate] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Chocolate]
		[Galleta]
		[Leche]
		[Mantequilla])
	(precio 2.5)
	(tiempo_coccion Bajo))

([Tofu] of  Ingrediente
)

([Tomate] of  Ingrediente
)

([Torrijas] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Aceite+de+oliva]
		[Azucar]
		[Huevo]
		[Leche]
		[Mantequilla]
		[Pan])
	(precio 5.0)
	(tiempo_coccion Medio))

([Tortilla+de+patatas] of  Principal

	(combina_bien
		[Croquetas]
		[Ensalada]
		[Falafel]
		[Gazpacho]
		[Hamburguesa]
		[Harira]
		[Ramen]
		[Sopa+de+miso]
		[Sushi])
	(disponibilidad Total)
	(info_generica Mediterraneo Clasico Vegetariano)
	(ingredientes
		[Cebolla]
		[Patatas]
		[Huevo])
	(papel Segundo)
	(precio 7.0)
	(tiempo_coccion Medio))

([Trufas+de+chocolate] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Mantequilla]
		[Chocolate]
		[Nata])
	(precio 2.0)
	(tiempo_coccion Medio))

([Vino+Blanco] of  Bebida

	(alcoholica TRUE)
	(combina_bien [Salmon+ahumado])
	(precio 3.0))

([Vino+Tinto] of  Bebida

	(alcoholica TRUE)
	(precio 3.0))

([Zanahoria] of  Ingrediente
))



;; ----------------------
;; DECLARACION DE MODULOS
;; ----------------------

(defmodule MAIN (export ?ALL))

(defmodule recopilacion-datos-evento
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule recopilacion-datos-menu
    (import MAIN ?ALL)
    (import recopilacion-datos-evento deftemplate ?ALL)
    (export ?ALL)
)

(defmodule recopilacion-restricciones
    (import MAIN ?ALL)
    (import recopilacion-datos-evento deftemplate ?ALL)
    (import recopilacion-datos-menu deftemplate ?ALL)
    (export ?ALL)
)

(defmodule procesar-datos
    (import MAIN ?ALL)
    (import recopilacion-datos-evento deftemplate ?ALL)
    (import recopilacion-datos-menu deftemplate ?ALL)
    (import recopilacion-restricciones deftemplate ?ALL)
    (export ?ALL)
)

(defmodule generacion-soluciones
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule seleccion
	(import MAIN ?ALL)
	(import recopilacion-datos-evento deftemplate ?ALL)
    (import recopilacion-datos-menu deftemplate ?ALL)
    (import recopilacion-restricciones deftemplate ?ALL)
	(import procesar-datos deftemplate ?ALL)
	(import generacion-soluciones deftemplate ?ALL)
	(export ?ALL)
)

(defmodule resultados
	(import MAIN ?ALL)
	(export ?ALL)
)

;; ------------------------
;; DECLARACION DE TEMPLATES
;; ------------------------

(deftemplate MAIN::datos-evento
    (slot n_comensales (type STRING) (default "None")) ; Numero de comensales
    (slot epoca (type STRING) (default "None"))
    (slot tipo (type STRING) (default "None"))
)

(deftemplate MAIN::datos-menu
    (slot bebida (type STRING) (default "None"))
    (slot estilo (type STRING) (default "None"))
    (slot region (type STRING) (default "None"))
)


(deftemplate MAIN::datos-restricciones
    (slot precio_max (type INTEGER) (default -1))
    (slot precio_min (type INTEGER) (default -1))
	(slot alcohol (type STRING) (default "None"))
	(slot dieta (type STRING) (default "None"))
    (multislot ingredientes_prohibidos (type STRING))
    
)

(deftemplate MAIN::sugerencia-menu
    (slot primero (type INSTANCE) (allowed-classes Principal))
    (slot segundo (type INSTANCE) (allowed-classes Principal))
    (slot postre (type INSTANCE) (allowed-classes Postre))
	(slot bebida (type INSTANCE)(allowed-classes Bebida))
    (slot puntuacion (type INTEGER) (default -1))
	(slot precio (type FLOAT) (default 0.0))
)

(deftemplate MAIN::abstracciones
    (slot abs_precio (type SYMBOL) (allowed-values Null Barato Economico Caro Lujoso))
	
)

(deftemplate MAIN::primer-menu
    (slot primero (type STRING) (default "None"))
    (slot segundo (type STRING) (default "None"))
    (slot postre (type STRING) (default "None"))
    (slot bebida (type STRING) (default "None"))
    (slot precio (type FLOAT) (default -1.0))
)

(deftemplate MAIN::segundo-menu
    (slot primero (type STRING) (default "None"))
    (slot segundo (type STRING) (default "None"))
    (slot postre (type STRING) (default "None"))
    (slot bebida (type STRING) (default "None"))
    (slot precio (type FLOAT) (default -1.0))
)

(deftemplate MAIN::tercero-menu
    (slot primero (type STRING) (default "None"))
    (slot segundo (type STRING) (default "None"))
    (slot postre (type STRING) (default "None"))
    (slot bebida (type STRING) (default "None"))
    (slot precio (type FLOAT) (default -1.0))
)
;; ------------------------
;; FUNCIONES PARA PREGUNTAS
;; ------------------------

(deffunction MAIN::pregunta-int (?p ?rI ?rF)
    (format t "%s (De %d hasta %d) " ?p ?rI ?rF)
    (bind ?respuesta (read))
    (while (not(and(>= ?respuesta ?rI)(<= ?respuesta ?rF))) do
        (format t "%s (De %d hasta %d) " ?p ?rI ?rF)
        (bind ?respuesta (read))
    )
    ?respuesta
)

(deffunction MAIN::pregunta-symbol (?p $?arr)
    (bind ?linea (format nil "%s" ?p))
    (printout t ?linea crlf)
    (progn$ (?var ?arr) 
            (bind ?linea (format nil " %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-int "Escoge una opcion:" 1 (length$ ?arr)))
    
	?respuesta
)

(deffunction MAIN::pregunta-llista (?p)
    (bind ?linea (format nil "%s" ?p))
    (printout t ?linea crlf)
    (bind ?respuesta (readline))
    (bind ?res (str-explode ?respuesta))
    
    ?res
)
    

; Comprobar que funciona saca todas las intancias de Bebida
; IMPORTANTE!!! PARA EJECUTAR EN CLIPS:
; (load "PATH/catering.clp")
; (reset)
; (run)

;; ------
;; REGLAS
;; ------

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10))
	=>
  	(printout t crlf)
	(printout t "!Bienvenido a nuestra aplicacion de menus!. A continuación" crlf)
	(printout t " se le formularan unas preguntas para ofrecerle 3 menus personalizados." crlf)
	(focus recopilacion-datos-evento)
)

;; 			------
;; 				REGLAS DEL MÓDULO "RECOPILACION-DATOS-EVENTO
;;			------

(defrule recopilacion-datos-evento::establecer-comensales "Indica el numero de comensales"
    (not (datos-evento))
    =>
    (bind ?r (pregunta-int "Cual es el numero de comensales?" 1 200))
    (printout t crlf)
    (if (and (>= ?r 1) (<= ?r 50)) then (bind ?tipo "Bajo"))
    (if (and (>= ?r 51) (<= ?r 100)) then (bind ?tipo "Medio"))
    (if (and (>= ?r 101) (<= ?r 200)) then (bind ?tipo "Alto"))

    (assert (datos-evento (n_comensales ?tipo)))
)

(defrule recopilacion-datos-evento::establecer-epoca "Indica la epoca"
    ?g <- (datos-evento (epoca ?epoca))
    (test (eq ?epoca "None"))
    =>
    (bind ?valores (create$ "Primavera" "Verano" "Otono" "Invierno"))
    (bind ?r (pregunta-symbol "En que epoca se celebrara?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?epoca "Primavera"))
    (if (= ?r 2) then (bind ?epoca "Verano"))
    (if (= ?r 3) then (bind ?epoca "Otono"))
    (if (= ?r 4) then (bind ?epoca "Invierno"))
    
    (modify ?g (epoca ?epoca))
)

(defrule recopilacion-datos-evento::establecer-tipo "Indica el tipo de evento"
    ?g <- (datos-evento (tipo ?tipo))
    (test (eq ?tipo "None"))
    =>
    (bind ?valores (create$ "Familiar" "Congreso" "Infantil"))
    (bind ?r (pregunta-symbol "Que tipo de celebracion es?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?tipo "Familiar"))
    (if (= ?r 2) then (bind ?tipo "Congreso"))
    (if (= ?r 3) then (bind ?tipo "Infantil"))
    
    (modify ?g (tipo ?tipo))
)

(defrule recopilacion-datos-evento::pasar-rec-datos-menu "Pasar a recopilacion de datos de menu"
    (datos-evento)
    =>
    (focus recopilacion-datos-menu)
)

;; 			------
;; 				REGLAS DEL MÓDULO "RECOPILACION-DATOS-MENU
;;			------

(defrule recopilacion-datos-menu::establecer_bebida "Indica el tipo de bebida"
    (not (datos-menu))
    =>
    (bind ?valores (create$ "General" "Por plato"))
    (bind ?r (pregunta-symbol "Quiere bebida por cada plato o general con el menu?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?bebida "General"))
    (if (= ?r 2) then (bind ?bebida "Por plato"))
    
    (assert (datos-menu (bebida ?r)))
)

(defrule recopilacion-datos-menu::establecer_estilo "Indica el tipo de estilo"
    ?g <- (datos-menu (estilo ?estilo))
    (test (eq ?estilo "None"))
    =>
    (bind ?valores (create$ "Clasico (Comida tradicional y raciones abundantes)" "Moderno (Comida moderna y raciones minimalistas)" "Regional (Comida originaria de un lugar a especificar)" "Sibarita (Comida exclusiva para paladares exigentes)"))
    (bind ?r (pregunta-symbol "Que estilo quiere en su menu?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?estilo "Clasico"))
    (if (= ?r 2) then (bind ?estilo "Moderno"))
    (if (= ?r 3) then (bind ?estilo "Regional"))
    (if (= ?r 4) then (bind ?estilo "Sibarita"))
    
    (modify ?g (estilo ?estilo))
)

(defrule recopilacion-datos-menu::establecer_region "Indica la region"
    ?g <- (datos-menu (region ?region) (estilo ?estilo))
    (and (test (eq ?region "None")) (test (eq ?estilo "Regional")))
    =>
    (bind ?valores (create$  "Mediterraneo" "Arabe" "Japones"))
    (bind ?r (pregunta-symbol "Que region le interesa para el menu" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?region "Mediterraneo"))
    (if (= ?r 2) then (bind ?region "Arabe"))
    (if (= ?r 3) then (bind ?region "Japones"))
    
    (modify ?g (region ?region))
)

(defrule recopilacion-datos-menu::pasar-rec-restricciones "Pasar a recopilacion de restricciones"
    (datos-menu)
    =>
    (focus recopilacion-restricciones)
)


;; 			------
;; 				REGLAS DEL MÓDULO "RECOPILACION-RESTRICCIONES
;;			------

(defrule recopilacion-restricciones::establecer_precio_min "Indica el precio minimo"
    (not (datos-restricciones))
    =>
    (bind ?r (pregunta-int "Cual es el precio minimo?" 1 1000))
    (printout t crlf)
    
    (assert (datos-restricciones (precio_min ?r)))
)

(defrule recopilacion-restricciones::establecer_precio_max "Indica el precio maximo"
    ?g <- (datos-restricciones (precio_max ?precio_max))
    (test (eq ?precio_max -1))    
    =>
    (bind ?pm (fact-slot-value ?g precio_min))
    (bind ?r (pregunta-int "Cual es el precio maximo?" (+ ?pm 1) 1000))

    (printout t crlf)
    
    (modify ?g (precio_max ?r))

)

(defrule recopilacion-restricciones::establecer_dieta "Indica si se sigue alguna dieta"
    ?g <- (datos-restricciones (dieta ?dieta))
    (test (eq ?dieta "None"))
    =>
    (bind ?valores (create$ "Vegetariana" "Vegana" "Ninguna"))
    (bind ?r (pregunta-symbol "Sigue alguna dieta en concreto?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?dieta "Vegetariana"))
    (if (= ?r 2) then (bind ?dieta "Vegana"))
	(if (= ?r 3) then (bind ?dieta "Ninguna"))
    
    (modify ?g (dieta ?dieta))
)

(defrule recopilacion-restricciones::alcohol "Indica si se quiere bebida alcoholica"
	?p <- (datos-evento (tipo ?tipo))
    ?g <- (datos-restricciones (alcohol ?alcohol))
    (test (and (neq ?tipo "Infantil") (eq ?alcohol "None")))
    =>
    (bind ?valores (create$ "Si" "No"))
    (bind ?r (pregunta-symbol "¿Quiere usted bebida alcoholica?" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?x "Si"))
    (if (= ?r 2) then (bind ?x "No"))
    
    (modify ?g (alcohol ?x))
)

(defrule recopilacion-restricciones::establecer_prohibidos "Indica los ingredientes prohibidos"
    ?g <- (datos-restricciones (ingredientes_prohibidos $?ingredientes_prohibidos))
    (test (eq 0 (length$ $?ingredientes_prohibidos)))
    =>
    (bind ?r (pregunta-llista "Que ingredientes desea evitar? (Ej: Queso Mantequilla Salmon)"))
    
    (modify ?g (ingredientes_prohibidos ?r))
)

(defrule recopilacion-restricciones::pasar-rec-sugerencia "Pasar a recopilacion de restricciones"
    (declare (salience -2))
    =>
    (focus procesar-datos)
)

;; 			------
;; 				REGLAS DEL MÓDULO "PROCESAR-DATOS"
;;			------

(defrule procesar-datos::abstraer_precio_persona "Abstraccion del precio de la persona"
	 ?p <- (datos-restricciones (precio_max ?p_max))
	 =>
	(if (>= 20 ?p_max) then (bind ?tipo Barato))
	(if (>= 35 ?p_max) then (bind ?tipo Economico))
	(if (>= 60 ?p_max) then (bind ?tipo Caro))
	(if (>= 100 ?p_max) then (bind ?tipo Lujoso))

	(assert (abstracciones (abs_precio ?tipo)))	
)

(defrule procesar-datos::abstraer_precio_persona "Abstraccion del precio de la persona"
	 ?p <- (datos-restricciones (precio_max ?p_max))
	 =>
	(if (>= 20 ?p_max) then (bind ?tipo Barato))
	(if (>= 35 ?p_max) then (bind ?tipo Economico))
	(if (>= 60 ?p_max) then (bind ?tipo Caro))
	(if (>= 100 ?p_max) then (bind ?tipo Lujoso))

	(assert (abstracciones (abs_precio ?tipo)))
	(focus seleccion)
)

;;(defrule procesar-datos::abstraer_valoracion_plato "Abstraccion del la valoracion de los platos"
;;	 ?g <- (datos-evento (epoca ?epoca))
;;	 =>
;;	 (bind ?platos (find-all-instances ((?plato Plato)) TRUE))
;;	 (loop-for-count (?i 1 (length$ ?platos)) do
;;			(bind ?plato_epoca (send (nth$ ?i $?platos) get-epoca)))
;;)
	
;; 			------
;; 				REGLAS DEL MÓDULO "SELECCION"
;;			------

(defrule seleccion::eliminar-platos-caros "Elimina los platos caros"
	?d <- (datos-restricciones (precio_max ?p_max))
	?s <- (object (is-a Plato) (precio ?precio))
	(test (> ?precio ?p_max))
    =>
	(send ?s delete)
)

(defrule seleccion::eliminar-bebidas-caras "Elimina las bebidas caras"
	?d <- (datos-restricciones (precio_max ?p_max))
	?s <- (object (is-a Bebida) (precio ?precio))
	(test (> ?precio ?p_max))
    =>
	(send ?s delete)
)

(defrule seleccion::eliminar-bebidas-alcoholicas "Elimina las bebidas alcoholicas en caso de no querer-las"
	?d <- (datos-restricciones (alcohol ?alcohol))
	?s <- (object (is-a Bebida) (alcoholica ?alcoholica))
	(test (and (or (eq ?alcohol "No") (eq ?alcohol "None")) (eq ?alcoholica TRUE)))
    =>
	(send ?s delete)
)

(defrule seleccion::eliminar-platos-no-vegetarianos"Elimina los platos que no son vegetarianos"
	?d <- (datos-restricciones (dieta ?dieta))
	?s <- (object (is-a Plato) (info_generica $?info_generica))
	(test (eq ?dieta "Vegetariana"))
    =>
	(if (not (member$ Vegetariano $?info_generica)) then (send ?s delete))
)

(defrule seleccion::eliminar-platos-no-veganos "Elimina los platos que no son veganos"
	?d <- (datos-restricciones (dieta ?dieta))
	?s <- (object (is-a Plato) (info_generica $?info_generica))
	(test (eq ?dieta "Vegana"))
    =>
	(if (not (member$ Vegano $?info_generica)) then (send ?s delete))
)

(defrule seleccion::tiempo-coccion-adecuado "Elimina los platos que no tengan un tiempo de coccion adecuado"
    ?d <- (datos-evento (n_comensales ?n))
    ?s <- (object (is-a Plato) (tiempo_coccion ?tc))
    (test (and (eq ?n "Alto") (eq ?tc Alto)))
    =>
    (send ?s delete)
)

(defrule seleccion::temporada-adecuada "Elimina los platos que tengan ingredientes no disponibles"
    ?d <- (datos-evento (epoca ?epoca))
    ?s <- (object (is-a Plato) (disponibilidad ?disp))
    (test (and (neq ?disp Total) (neq (sym-cat ?epoca) ?disp)))
    =>
    (send ?s delete)
)

(defrule seleccion::estilo-clasico "Elimina los platos que no tengan el estilo clasico"
    ?d <- (datos-menu (estilo ?estilo))
    ?s <- (object (is-a Principal) (info_generica $?info_generica))
    (test (eq ?estilo "Clasico"))
    =>
    (if (not (member$ Clasico $?info_generica)) then 
        (send ?s delete))
)

(defrule seleccion::estilo-moderno "Elimina los platos que no tengan el estilo moderno"
    ?d <- (datos-menu (estilo ?estilo))
    ?s <- (object (is-a Principal) (info_generica $?info_generica))
    (test (eq ?estilo "Moderno"))
    =>
    (if (not (member$ Moderno $?info_generica)) then (send ?s delete))
)

(defrule seleccion::estilo-regional "Elimina los platos que no tengan el estilo regional"
    ?d <- (datos-menu (estilo ?estilo) (region ?region))
    ?s <- (object (is-a Principal) (info_generica $?info_generica))
    (test (eq ?estilo "Regional"))
    =>
    (if (not (member$ (sym-cat ?region) $?info_generica)) then (send ?s delete))
)

(defrule seleccion::estilo-sibarita "Elimina los platos que no tengan el estilo sibarita"
    ?d <- (datos-menu (estilo ?estilo))
    ?s <- (object (is-a Principal) (info_generica $?info_generica))
    (test (eq ?estilo "Sibarita"))
    =>
    (if (not (member$ Sibarita $?info_generica)) then (send ?s delete))
)
    

(defrule seleccion::seleccion-platos-por-ingredientes "Selecciona los sin ingredientes prohibidos"
	(declare (salience -1))
    ?d <- (datos-restricciones (ingredientes_prohibidos $?ing_prohibidos))
	?s <- (object (is-a Plato) (ingredientes $?ingredientes))
    => 
	(bind ?cond FALSE)
	(bind ?i 1)
	
	(while (and (not ?cond) (<= ?i (length$ $?ing_prohibidos))) do
        
		(if (member$ (symbol-to-instance-name (nth$ ?i $?ing_prohibidos)) $?ingredientes)
            then 
				(bind ?cond TRUE)
				(send ?s delete)
		)
        (bind ?i (+ ?i 1))
	)
)

(defrule seleccion::pasar-a-generacion-soluciones "Pasar a la generacion de menus"
    (declare (salience -2))
    =>
    (focus generacion-soluciones)
)

;; 			------
;; 				REGLAS DEL MÓDULO "GENERA-SOLUCIONES"
;;			------

(defrule generacion-soluciones::generar-menu
	?primero <- (object (is-a Principal))
	?segundo <- (object (is-a Principal))
	?postre <- (object (is-a Postre))
	?bebida <- (object (is-a Bebida))
	?p <- (datos-restricciones (precio_max ?p_max) (precio_min ?p_min))
	(test (and (and (neq ?primero ?segundo) (or (eq (send ?primero get-papel) Primero) (eq (send ?primero get-papel) Ambos)))
			 (or (eq (send ?segundo get-papel) Segundo) (eq (send ?segundo get-papel) Ambos))))
	=> 
	(bind ?precio (+ (+ (+ (send ?primero get-precio) (send ?segundo get-precio))(send ?postre get-precio)) (send ?bebida get-precio)))  
	(if (and (< ?precio ?p_max) (> ?precio ?p_min)) then
        (assert (sugerencia-menu (primero ?primero) (segundo ?segundo) (postre ?postre) (bebida ?bebida) (precio ?precio)))
    )
)

		
(defrule generacion-soluciones::pasar-resultados "Pasar a la muestra de resultados"
    (declare (salience -2))
    =>
    (focus resultados)
)


;; 			------
;; 				REGLAS DEL MÓDULO "RESULTADOS"
;;			------


(defrule resultados::menu-barato "Escoger el menu barato"
    ?s <- (sugerencia-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?b) (precio ?pr))
    ?t <- (datos-restricciones (precio_min ?p_min))
    (not (primer-menu))
    =>
    (assert (primer-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?p) (precio ?pr)))
)

(defrule resultados::menu-medio "Escoger el menu medio"    
    ?s <- (sugerencia-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?b) (precio ?pr))
    ?t <- (datos-restricciones (precio_min ?p_min))
    (not (segundo-menu))
    =>    
    (assert (segundo-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?p) (precio ?pr)))
)

(defrule resultados::menu-caro "Escoger el menu caro"
    ?s <- (sugerencia-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?b) (precio ?pr))
    ?t <- (datos-restricciones (precio_min ?p_max))
    (not (tercer-menu))
    =>    
    (assert (tercero-menu (primero ?p) (segundo ?se) (postre ?pt) (bebida ?p) (precio ?pr)))
)

;; No nos ha dado tiempo a escoger los menus adecuados y escoge los 3 ultimos que ha generado

(defrule resultados::pasar-resultados "Pasar a la muestra de resultados"
    ?m1 <- (primer-menu (primero ?p1) (segundo ?s1) (postre ?pt1) (bebida ?b1) (precio ?pr1))
    ?m2 <- (segundo-menu (primero ?p2) (segundo ?s2) (postre ?pt2) (bebida ?b2) (precio ?pr2))
    ?m3 <- (tercero-menu (primero ?p3) (segundo ?s3) (postre ?pt3) (bebida ?b3) (precio ?pr3))
    =>
    (printout t "------------ MENUS OFRECIDOS -------------" crlf)
    (printout t "1. Menu barato: " crlf)
    (printout t "Primero: " ?p1 ", Segundo: " ?s1 ", Postre: " ?pt1 ", Bebida: " ?b1 ", Precio: " ?pr1 crlf)
    (printout t crlf)
    (printout t "2. Menu medio: " crlf)
    (printout t "Primero: " ?p2 ", Segundo: " ?s2 ", Postre: " ?pt2 ", Bebida: " ?b2 ", Precio: " ?pr2 crlf)
    (printout t crlf)
    (printout t "3. Menu caro: " crlf)
    (printout t "Primero: " ?p3 ", Segundo: " ?s3 ", Postre: " ?pt3 ", Bebida: " ?b3 ", Precio: " ?pr3 crlf)
    (printout t crlf)

)

(defrule resultados::escoger-menu "Escoge menu"
    =>
    (printout t "Escoja el menu que mas se adeque a su gusto (1, 2, 3)" crlf)
    (bind ?respuesta (readline))
    (printout t "¡Gracias por utilizar nuestro servicio!" crlf)
)

