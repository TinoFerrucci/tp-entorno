# Trabajo práctico final de Entorno de Programación
## Integrantes
### Constantino Ferrucci
### Comisión 3
### Grupo 18

## Información sobre el proyecto:
### Consignas: https://drive.google.com/file/d/1qfZTkA4zPgNroqfGzBhRr52F_XYgeDmu/view?usp=sharing
### Documentación sobre el trabajo realizados: 

## ¿Como ejecuto el trabajo?
### Primero clonamos el repositorio
```bash 
git clone https://github.com/TinoFerrucci/tp-entorno.git
```
### Ingresamos en el directorio
```bash 
cd tp-entorno
```
### Luego nos aseguramos de instalar los paquetes de Docker (en caso de no tenerlo instalado)
```bash 
sudo apt-get install docker
```
### Creamos la imagen con el tag tp-entorno
```bash 
docker build -t tp-entorno .
```
### Corremos la imagen en modo interactivo
```bash 
docker run -it tp-entorno
```

