puts "Bienvenido al Inventario de Desafio Latam..."

loop do
    puts "Elige una de las siguientes opciones: ", "\n"
    puts "
        1. Generar archivo con el nombre de cada alumno y su promedio \n
        2. Contar cantidad de inasistencias totales y mostrarlas en pantalla \n
        3. Mostrar nombres de los alumnos aprobados \n
        4. Salir \n", "\n"
    opc = gets.chomp.to_i
    case opc
        when 1 #Listo
            puts "Generando archivo..."
            file = File.open('alumnos.txt').read
            new_file = File.open('alumnos.csv', 'w')
            data = file.split
            new_file.puts data[0]
        when 2 #Listo
            puts "Contando cantidad de inasistencias..."
        when 3 #Listo
            puts "Mostrando nombres..."
        when 4 #Listo
            puts "Good Bye :) ..."
        break
    end
end



