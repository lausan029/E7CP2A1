puts 'Ingrese una opcion:'
puts ' 1: Permite ingresar los datos de una persona'
puts ' 2: Permite editar los datos de la persona.'
puts ' 3: Permite eliminar una persona.'
puts ' 4: Muestra la cantidad de personas ingresadas.'
puts ' 5: Muestra las comunas de todas las personas.'
puts ' 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.'
puts ' 7: Muestra la suma de las edades de todas las personas.'
puts ' 8: Muestra el promedio de las edades del grupo.'
puts ' 9: Muestra dos listas de personas, una por cada género.'
puts ' 10: Salir'
num = gets.chomp.to_i

bucket = {}
arr = []
while num != 10
	case num
	when 1
	  puts 'Nombre'
	  nom = gets.chomp
	  bucket[:nombre] = nom.capitalize
	  puts 'Edad'
	  age = gets.chomp
	  bucket[:edad] = age
	  puts 'Comuna'
	  com = gets.chomp
	  bucket[:comuna] = com.capitalize
	  puts 'Genero'
	  sex = gets.chomp
	  bucket[:sex] = sex.capitalize
	  arr.push(bucket)
	  p arr
	when 2
	  puts '----------------------------'
	when 3
	  puts '----------------------------'
	when 4
	  puts '----------------------------'
	when 5
	  puts '----------------------------'
	when 6
	  puts '----------------------------'
	when 7
	  puts '----------------------------'
	when 8
	  puts '----------------------------'
	when 9
	  puts '----------------------------'
	when 10
	  puts '----------------------------'
	else
	  puts "Introduzca una opcion correcta"
	end

	puts 'Ingrese una opcion:'
	puts ' 1: Permite ingresar los datos de una persona'
	puts ' 2: Permite editar los datos de la persona.'
	puts ' 3: Permite eliminar una persona.'
	puts ' 4: Muestra la cantidad de personas ingresadas.'
	puts ' 5: Muestra las comunas de todas las personas.'
	puts ' 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.'
	puts ' 7: Muestra la suma de las edades de todas las personas.'
	puts ' 8: Muestra el promedio de las edades del grupo.'
	puts ' 9: Muestra dos listas de personas, una por cada género.'
	puts ' 10: Salir'
	num = gets.chomp.to_i
end

puts "Hasta Luego"