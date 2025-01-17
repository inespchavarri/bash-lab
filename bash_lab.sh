# Imprime en consola "Hello World".

echo "Hello World"

# Crea un directorio nuevo llamado new_dir

mkdir new_dir

# Elimina ese directorio.

rm -r new_dir

# Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.

cp lorem/sed.txt lorem-copy/

# Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola linea mediante ;

cp lorem/at.txt lorem/lorem.txt lorem-copy/

# Muestra el contenido del archivo sed.txt dentro de la carpeta lorem

cat lorem/sed.txt

# Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem

cat lorem/at.txt lorem/lorem.txt

# Visualiza las primeras 3 linas del archivo sed.txt dentro de la carpeta lorem-copy

head -3 lorem-copy/sed.txt

# Visualiza las ultimas 3 linas del archivo sed.txt dentro de la carpeta lorem-copy

tail -3 lorem-copy/sed.txt

# Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.

echo "Homo homini lupus." >> lorem-copy/sed.txt


# Visualiza las últimas 3 linas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..

tail -3 lorem-copy/sed.txt

# Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed

sed -i "" "s/et/ET/g" lorem-copy/at.txt

# Encuentra al usuario activo en el sistema.

id -un

# Encuentra dónde estás en tu sistema de ficheros.

pwd

# Lista los archivos que terminan por .txt en la carpeta lorem.

find lorem -type f -name "*.txt"

# Cuenta el número de lineas que tiene el archivo sed.txt dentro de la carpeta lorem. Tendrás que encadenar cat y wc mediante el pipe |.

cat lorem/sed.txt | wc -l

# Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos

find . -type f -name "lorem*" | wc -l

# Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.

grep et lorem/at.txt

# Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem. Para ello debes obtener sólo los string buscados y contar las lineas.

grep -o et lorem/at.txt | wc -l

# Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.

grep -oi et lorem-copy/* | wc -l


# BONUS

# Almacena en una variable name tu nombre mediante el comando read. No sé si esto es exactamente lo que se pedía

read -p "Enter your name:" name

# Imprime esa variable.

echo $name

# Crea un directorio nuevo que se llame como el contenido de la variable name.

mkdir $name

# Elimina ese directorio.

rm -r $name

# Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. 
# Intenta primero mostrar los archivos mediante un bucle for. Luego calcula la longitud de cada elemento de la iteración.
# Imprime los ficheros / Imprime las longitudes de los nombres de los ficheros.

for file in lorem/*;
do
basename $file;
printf $(basename $file) | wc -m;
done