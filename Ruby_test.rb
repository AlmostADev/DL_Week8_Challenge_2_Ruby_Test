file = File.open('alumnos.txt', 'r')
data = file.readlines.each.map(&:chomp)
file.close

not_minima = 5.0

def averageAlumnos(data)
    file2 = File.open('promedios.txt', 'w')
        data.each do |item|
            names = item.split(', ')[0]
            marks = item.split(', ')[1..5].each.map(&:to_i)
            avg = 0
            marks.each do |mark|
                avg += mark
            end
            promedio = avg / marks.length.to_f
            file2.puts "#{names} : #{promedio}"
        end
    file2.close
end

def inasistenciasAlumnos(data)
    data.each do |item|
        names = item.split(', ')[0]
        marks = item.split(', ')[1..5].each.map(&:to_i)
        asistencia = marks.count(0)
        puts "#{names} : #{asistencia} asistencia" if asistencia >= 1
    end
end

def approveStudents(data, not_minima)
    data.each do |item|
        names = item.split(', ')[0]
        marks = item.split(', ')[1..5].each.map(&:to_i)
        avg = 0
        marks.each do |mark|
            avg += mark
        end
        promedio = avg / marks.length.to_f
        puts "#{names} aprobado, Felicitaciones! :)" if promedio >= not_minima
    end
end

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
puts "Bienvenido al Libro de clases de Desafio Latam..."

loop do
    puts "Elige una de las siguientes opciones: ", "\n"
    puts "
        1. Generar un archivo alumno/notas \n
        2. Cantidad de inasistencias totales por alumno \n
        3. Mostrar alumnos aprobados \n
        4. Salir \n", "\n"
    opc = gets.chomp.to_i
    case opc
        #1 Debe generar un archivo con el nombre de cada alumno y el promedio de sus notas.
        when 1 #Listo
            averageAlumnos(data)
        #2 Debe contar la cantidad de inasistencias totales y mostrarlas en pantalla.
        when 2 #Listo
            inasistenciasAlumnos(data)
        #3 Debe mostrar los nombres de los alumnos aprobados. Para eso
        #  se debe crear un método que reciba -como argumento- la nota necesaria pa
        #  aprobar, por defecto esa nota debe ser 5.
        when 3 #Listo
            # if don't enter a min mark to evaluate, not_minima is 5.0
            puts "Ingrese nota minima de aprobación", "\n"
            nota = gets.chomp.to_f

            if nota != 0 || nota.to_s.empty?
                not_minima = nota
            else
                not_minima = 5.0
            end
            approveStudents(data, not_minima)
        #4 Debe terminar el programa.
        when 4 #Listo
            puts "Saliendo :( ... Adios ..."
        break
    end
end