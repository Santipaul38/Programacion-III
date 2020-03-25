def Menu ()
	puts "Que Actividad Desea? (1-7)"
	puts "Para salir ingrese 0"
	opcion = gets.chomp.to_i

	if opcion==1
		Act1()
		puts ""
		Menu()
	elsif opcion==2
		Act2()
		puts ""
		Menu()
	elsif opcion==3
		Act3()
		puts ""
		Menu()
	elsif opcion==4
		Act4()
		puts ""
		Menu()
	elsif opcion==5
		Act5()
		puts ""
		Menu()
	elsif opcion==6
		Act6()
		puts ""
		Menu()
	elsif opcion==7
		Act7()
		puts ""
		Menu()
	elsif opcion==0
		puts "Saliendo.."
	else
		puts "Esa opcion es incorrecta, ingrese una valida"
		Menu()
	end
		
	
end

def Act1 ()
	puts "Actividad 1:"
	def Opciones ()
		puts "Que opcion desea?"
		puts "a. Cantidad de horas en un año"
		puts "b. Cantidad de minutos en una decada"
		puts "c. Segundos de edad que tienes"
		puts "d. Edad de 1031 millones de segundos"
		puts "e. Salir"
		opcion = gets.chomp

		if opcion=='a'
			puts "1 año tiene 8760 horas"
			Opciones()
		elsif opcion=='b'
			puts "En una decada hay 3126360000 minutos"
			Opciones()
		elsif opcion=="c"
			Segundos_edad()
			Opciones()
		elsif opcion=="d"
			puts "1031 millones de segundos son 32,7 años"
			Opciones()
		elsif opcion=="e"
			puts "Saliendo.."
		end

	end


	def Segundos_edad ()
		puts "Que edad tienes?"
		edad = gets.chomp.to_i
		segundos = (edad * 365*24*3600).to_s
		puts "Usted tiene " + segundos + " segundos de edad."
	
	end
	Opciones()
end

def Act2 ()
	puts "Actividad 2:"
	puts ""
	puts "Introduzca su nombre:"
	nombre1 = gets.chomp
	puts ""
	puts "Introduza su segundo nombre (Si no tiene dejar en blanco):"
	nombre2 = gets.chomp
	puts ""
	puts "Introduzca su apellido:"
	apellido = gets.chomp

	if nombre2.to_i == 0
		puts "Buenos días "+nombre1+" "+apellido 
	else
		puts "Buenos días "+nombre1 +" "+nombre2+" "+apellido
	end	
end

def Act3 ()
	puts "Actividad 3:"
	puts "Ingrese una frase:"
	frase = gets.chomp
	puts [frase]*100
end

def Act4 ()
	puts "Actividad 4:"
	def hablando_con_la_abuela ()
		puts "Dile algo a la abuela:"
		frase = gets.chomp

		saludo = "ADIOS"
		fechaRandom = rand 1930...1950

		if frase == saludo
			puts "Saliendo.."

		elsif frase == frase.upcase
			puts "NO, NO DESDE "+fechaRandom.to_s
			hablando_con_la_abuela()

		else
			puts "HUH?! ¡HABLA MAS FUERTE, HIJO!"
			hablando_con_la_abuela()
		end
	end
	hablando_con_la_abuela()
end

def Act5 ()
	puts "Actividad 5:"
	@frases = []

	def hablando_con_la_abuela ()
		puts "Dile algo a la abuela:"
		frase = gets.chomp
		@frases.push(frase)
		total = @frases.length

		saludo = "ADIOS"
		fechaRandom = rand 1930...1950

		if (@frases[total-1] == saludo)
			if (@frases[total-2] == saludo)
				if (@frases[total-3] == saludo && total>2)
					salir
				end
			end
			puts "NO, NO DESDE "+fechaRandom.to_s
			hablando_con_la_abuela
		elsif @frases[total-1].to_s == @frases[total-1].to_s.upcase
			puts "NO, NO DESDE "+fechaRandom.to_s
			hablando_con_la_abuela
		else
			puts "HUH?! ¡HABLA MAS FUERTE, HIJO!"
			hablando_con_la_abuela
		end
	end

	def salir
		puts "Saliendo.."
		puts ""
		Menu()
	end
	hablando_con_la_abuela()
end

def Act6 ()
	puts "Actividad 6: "
	puts "Ingrese primer año:"
	año1 = gets.chomp.to_i

	puts "Ingrese segundo año:"
	año2 = gets.chomp.to_i

	puts "Años bisiestos entre: " + año1.to_s + " y " + año2.to_s
	for i in año1...año2+1
		if i.modulo(4)==0
			if i.modulo(100)==0
				if i.modulo(400)==0
					puts i
				end
			else
				puts i
			end
		end
	end
end

def Act7 ()
	puts "Actividad 7:"
	hora = (Time.now.hour).to_i

	if hora>12
		for i in 0...(hora-12)
			puts "DONG!"
		end
	else
		for i in 0...hora
			puts "DONG!"
		end
	end
end

Menu()
