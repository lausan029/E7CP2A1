
#
#
#Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
p nombres.select{ |nom| nom.length > 5 }

#Utilizando .map crear una arreglo con los nombres en minúscula.
arr_minus = nombres.map { |e| e.downcase }
p arr_minus

#Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
nom_p = nombres.select{ |nom| nom.split("").first == 'P' }
p nom_p

#Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
nuevo = nombres.map { |e| e.split("") }
p nuevo

#Utilizando .map y .gsub eliminar las vocales de todos los nombres.
del = nombres.map { |nu| nu.delete('aeiou') }
p del