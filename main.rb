
total_caracteres = 0
total_caracteres_sin_espacios = 0
total_lineas = 0
total_palabras = 0

#lee archivo
File.readlines("texto.txt").each {|linea|
    if linea.length != 0
        total_caracteres += linea.chomp.length
    end
    total_caracteres_sin_espacios += linea.gsub(/\s+/, "").length
    total_lineas += 1
    total_palabras += linea.split.size
}

#escribe nuevo archivo
f = File.new("resultado.txt", "w+")
f.puts "Total de palabras: #{total_palabras}"
f.puts "Total caracteres (sin espacios) #{total_caracteres_sin_espacios}"
f.puts "Total caracteres (con espacios) #{total_caracteres}"
f.puts "Total de líneas #{total_lineas}"
f.close
