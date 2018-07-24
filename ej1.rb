#a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
#Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

aux = a.map { |e| e+1 }
p aux

#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.

flotante = a.map { |e| e.to_f }
p flotante

#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
st = a.map { |e| e.to_s }
p st
#Utilizando reject descartar todos los elementos menores a 5 en el array.

rej = a.reject{ |x| x < 5}
p rej

#Utilizando select descartar todos los elementos mayores a 5 en el array.

sel = a.select{ |x| x <= 5}
p sel

#Utilizando inject obtener la suma de todos los elementos del array.
inj = a.inject(0) { |sum, x| sum + x }
p inj
#Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
pares = a.group_by{|par| par.even?}
p pares
#Utilizando group_by agrupar todos los números mayores y menores que 6.
mayores = a.group_by{|mayor| mayor > 6}
p mayores



