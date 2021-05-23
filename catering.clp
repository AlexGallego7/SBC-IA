; Sun May 23 19:48:44 CEST 2021
; 
;+ (version "3.5")
;+ (build "Build 660")


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
		(allowed-values Primavera Verano Oto%C3%B1o Invierno Total)
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

([Azucar] of  Ingrediente
)

([Chocolate] of  Ingrediente
)

([CocaCola] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Cordero] of  Ingrediente
)

([Ensalada] of  Principal

	(combina_bien [SalmonAhumado])
	(disponibilidad Total)
	(info_generica Vegetariano Vegano)
	(ingredientes
		[Lechuga]
		[Zanahoria]
		[Remolacha])
	(papel Primero)
	(precio 5.0)
	(tiempo_coccion Bajo))

([Esparrago] of  Ingrediente
)

([Fanta] of  Bebida

	(alcoholica FALSE)
	(precio 1.25))

([Fresa] of  Ingrediente
)

([Galleta] of  Ingrediente
)

([Leche] of  Ingrediente
)

([Lechuga] of  Ingrediente
)

([Limon] of  Ingrediente
)

([Mantequilla] of  Ingrediente
)

([Melon] of  Ingrediente
)

([Naranja] of  Ingrediente
)

([Pepino] of  Ingrediente
)

([Queso] of  Ingrediente
)

([Remolacha] of  Ingrediente
)

([Sal] of  Ingrediente
)

([Salmon] of  Ingrediente
)

([SalmonAhumado] of  Principal

	(disponibilidad Total)
	(info_generica Pescado)
	(ingredientes
		[Salmon]
		[Limon]
		[Sal])
	(papel Ambos)
	(precio 7.0)
	(tiempo_coccion Alto))

([TartaChocolate] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Chocolate]
		[Galleta]
		[Leche]
		[Mantequilla])
	(precio 2.5)
	(tiempo_coccion Bajo))

([TartaQueso] of  Postre

	(disponibilidad Total)
	(ingredientes
		[Azucar]
		[Galleta]
		[Queso])
	(precio 3.0)
	(tiempo_coccion Bajo))

([VinoBlanco] of  Bebida

	(alcoholica TRUE)
	(combina_bien [SalmonAhumado])
	(precio 3.0))

([VinoTinto] of  Bebida

	(alcoholica TRUE)
	(precio 3.0))

([Zanahoria] of  Ingrediente)
)

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
	(slot alcohol (type STRING) (default "Yes"))
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
	(printout t "!Bienvenido! A continuacion se le formularan una serie de" crlf)
	(printout t "preguntas para recomendarle una serie de menus." crlf)
	(printout t crlf)
	(focus recopilacion-restricciones)
)

;; 			------
;; 				REGLAS DEL MÓDULO "RECOPILACION-DATOS-EVENTO
;;			------

(defrule recopilacion-datos-evento::establecer-comensales "Indica el numero de comensales"
    (not (datos-evento))
    =>
    (bind ?r (pregunta-int "Cual es el numero de comensales?" 1 50))
    (printout t crlf)
    (if (and (>= ?r 1) (<= ?r 10)) then (bind ?tipo "Bajo"))
    (if (and (>= ?r 11) (<= ?r 30)) then (bind ?tipo "Medio"))
    (if (and (>= ?r 31) (<= ?r 50)) then (bind ?tipo "Alto"))

    (assert (datos-evento (n_comensales ?r)))
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
    (bind ?valores (create$ "Italia" "Mediterraneo" "Arabe" "China" "Mexico"))
    (bind ?r (pregunta-symbol "Que region le interesa para el menu" ?valores))
    (printout t crlf)
    
    (if (= ?r 1) then (bind ?region "Italia"))
    (if (= ?r 2) then (bind ?region "Mediterraneo"))
    (if (= ?r 3) then (bind ?region "Arabe"))
    (if (= ?r 4) then (bind ?region "China"))
    (if (= ?r 5) then (bind ?region "Mexico"))
    
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

(defrule recopilacion-restricciones::establecer_prohibidos "Indica los ingredientes prohibidos"
    ?g <- (datos-restricciones (ingredientes_prohibidos $?ingredientes_prohibidos))
    (test (eq 0 (length$ $?ingredientes_prohibidos)))
    =>
    (bind ?r (pregunta-llista "Que ingredientes desea evitar? (Ej: Queso Mantequilla Salmon)"))
    
    (modify ?g (ingredientes_prohibidos ?r))
)

(defrule recopilacion-restricciones::pasar-rec-sugerencia "Pasar a recopilacion de restricciones"
    (declare (salience -1))
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
	(focus generacion-soluciones)
)

;;(defrule procesar-datos::abstraer_valoracion_plato "Abstraccion del la valoracion de los platos"
;;	 ?g <- (datos-evento (epoca ?epoca))
;;	 =>
;;	 (bind ?platos (find-all-instances ((?plato Plato)) TRUE))
;;	 (loop-for-count (?i 1 (length$ ?platos)) do
;;			(bind ?plato_epoca (send (nth$ ?i $?platos) get-epoca)))
;;)
	

;; 			------
;; 				REGLAS DEL MÓDULO "GENERA-SOLUCIONES"
;;			------

(defrule generacion-soluciones::generar-menu
	?primero <- (object (is-a Principal))
	?segundo <- (object (is-a Principal))
	?postre <- (object (is-a Postre))
	?bebida <- (object (is-a Bebida))
	(test (and (and (neq ?primero ?segundo) (or (eq (send ?primero get-papel) Primero) (eq (send ?primero get-papel) Ambos)))
			 (or (eq (send ?segundo get-papel) Segundo) (eq (send ?segundo get-papel) Ambos))))
	=> 
	(bind ?precio (+ (+ (+ (send ?primero get-precio) (send ?segundo get-precio))(send ?postre get-precio)) (send ?bebida get-precio)))  
	(assert (sugerencia-menu (primero ?primero) (segundo ?segundo) (postre ?postre) (bebida ?bebida) (precio ?precio)))
)
		
(defrule generacion-soluciones::pasar-resultados "Pasar a la muestra de resultados"
    (declare (salience -1))
    =>
    (focus seleccion)
)

;; 			------
;; 				REGLAS DEL MÓDULO "SELECCION"
;;			------

(defrule seleccion::seleccion-platos-por-precio "Selecciona los platos dentro del rango de precio"
    ?s <- (sugerencia-menu (precio ?precio))
	?p <- (datos-restricciones (precio_min ?p_min) (precio_max ?p_max))
	(test (or (> ?precio ?p_max) (< ?precio ?p_min)))
    =>
	(printout t "se va a eliminar esta sugerencia " ?s " debido a su precio del " ?precio crlf)
	(retract ?s)
)

(defrule seleccion::seleccion-platos-por-ingredientes "Selecciona los sin ingredientes prohibidos"
    ?d <- (datos-restricciones (ingredientes_prohibidos $?ing_prohibidos))
	?s <- (sugerencia-menu (primero ?primero) (segundo ?segundo) (postre ?postre) (precio ?precio))
    => 
	(bind ?ings_primero (send ?primero get-ingredientes))
	(printout t "ingrediente del primero: " ?ings_primero)
	(bind ?ings_segundo (send ?segundo get-ingredientes))
	(bind ?ings_postre (send ?postre get-ingredientes))
	(bind ?cond FALSE)
	(bind ?index 1)
	(while (and (not ?cond) (< ?index (length$ $?ing_prohibidos))) do
		if( (member (nth$ ?i $?ing_prohibidos) ?ings_primero) 
			then 
				(bind ?cond TRUE)
			else 
				if( (member (nth$ ?i $?ing_prohibidos) ?ings_segundo) 
					then 
						(bind ?cond TRUE)
					else 
						if( (member (nth$ ?i $?ing_prohibidos) ?ings_postre) 
							then 
								(bind ?cond TRUE))))
	)
	(if(?cond) then (retract ?s))
	
)

;; 			------
;; 				REGLAS DEL MÓDULO "RESULTADOS"
;;			------

(defrule resultados::pasar-resultados "Pasar a la muestra de resultados"
    ?s <- (sugerencia-menu)
    =>
    
)


