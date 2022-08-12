# Trabajo práctico final de Entorno de Programación
## Integrantes
### Constantino Ferrucci

## ¿Como ejecuto el git?
### Primero clonamos el repositorio
git clone https://github.com/TinoFerrucci/tp-entorno.git

### Ingresamos en el directorio
cd tp-entorno

### Luego nos aseguramos de instalar los paquetes de Docker (en caso de no tenerlo instalado)
apt-get install docker

### Creamos la imagen con el tag tp-entorno
docker build -t tp-entorno

### Corremos la imagen en modo interactivo
docker run -it tp-entorno


