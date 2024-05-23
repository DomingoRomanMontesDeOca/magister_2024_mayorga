form datos del participante
	word iniciales xxxx
	choice sexo 1
		option masc
		option feme
	choice rango_de_edad_en_años 2
		option menor_de_18
		option entre_18_y_25
		option entre_25_y_45
		option entre_45_y_60
		option sobre_60
	real id 1

endform


id$ = string$(id)

largo_id = length(id$)

if largo_id < 2

	id$ = "0"+id$

endif

appendInfoLine: id$, sexo,rango_de_edad_en_años, iniciales$

nombre$ = id$+string$(sexo)+string$(rango_de_edad_en_años)+iniciales$
writeInfoLine:"======"
appendInfoLine: nombre$

Read from file: "/Users/guru/Documents/2024_magis_fonetica/experimento_1/judith.txt"
Run
pauseScript: "Espere a que finalice el experimento"

Extract results
Collect to Table
Rename: nombre$

# falta guardar la tabla
