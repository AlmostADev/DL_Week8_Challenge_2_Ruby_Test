file = File.open('alumnos.txt', 'r')
data = file.readlines.each.map(&:chomp)
file.close

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

averageAlumnos(data)

def inasistenciasAlumnos(data)
    data.each do |item|
        names = item.split(', ')[0]
        marks = item.split(', ')[1..5].each.map(&:to_i)
        asistencia = marks.count(0)
        puts "#{names} : #{asistencia} asistencia" if asistencia >= 1
    end
end

inasistenciasAlumnos(data)

def approveStudents()

end

