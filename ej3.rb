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

arr = []

while num != 10
	case num
	when 1
	  puts 'Nombre'
	  nom = gets.chomp.capitalize
	  puts 'Edad'
	  age = gets.chomp
	  puts 'Comuna'
	  com = gets.chomp.capitalize
	  puts 'Genero'
	  sex = gets.chomp.capitalize
    
    arr << { name: nom, age: age, comuna: com, sex: sex }
	  p arr

	when 2
		puts 'Introduzca la posicion de valor a modificar (Ej:1)'
    position = gets.chomp.to_i
	  puts 'Introduzca el valor a modificar'
    update = gets.chomp.split(":")
    arr[position][update[0]] = update[1]
    p "Campo modificado"
    p arr

	when 3
	  p arr
	  puts 'Introduzca la posicion de la personas a eliminar'
	  position = gets.chomp.to_i
	  arr.delete_at(position)
	  p 'Elemento eliminado, ahora la lista es la siguiente:'
	  p arr

	when 4
	  puts "La cantidad de personas ingresadas es: #{arr.count}"

	when 5
	  puts 'las comunas son las siguientes:'
	  arr.each do |c|
	  	p c[:comuna]
	  end

	when 6
		a = []
		arr.map do |i| 
			if ((i[:age].to_i >= 20) && (i[:age].to_i <= 25))
				a.push(i)
			end
	  end
	  puts "Las personas que estan entre 20 y 25 años son: #{a}"

	when 7
	  a = arr.map{|i| i[:age].to_i}
	  inj = a.inject(0) { |sum, x| sum + x }
	  puts "La suma es #{inj}"

	when 8
		a = arr.map{|i| i[:age].to_i}
	  inj = a.inject(0) { |sum, x| sum + x }
	  promedio = inj / a.count
	  puts "El promedio de todas las edades es #{promedio}"
	when 9
		femenino = arr.group_by{|f| f[:sex] == 'F'}
	  puts femenino

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