#!/bin/bash
#Juri
#Daniel Hernandez Cuero
#KEY de escritura de mi canal
KEY=VPX8F1M1YHN4ZS76
#################################################################
#CPU Utilizadarr
PromedioCPU=$( mpstat | grep all | awk '{print $4'})
echo "ConsumoCPU:" $PromedioCPU%
#################################################################
#Calculo de memeoria de memoria utilizada 
MemoriaTotal=$(free | grep Mem | awk '{print $2'})
#echo $MemoriaTotal
MemoriaUsada=$(free | grep Mem | awk '{print $3'})
#echo $MemoriaUsada
let PMemoriaUsada=(${MemoriaUsada}*100)/${MemoriaTotal}
echo "Memoria Utilizada:" $PMemoriaUsada%
##################################################################
#Calculo de disco de disco disponible
PDiscoUtulizado=$(df | grep /dev/sda1 | awk '{print $3'})
DiscoTamano=$(df | grep /dev/sda1 | awk '{print $2'})
DiscoDisponible=$(df | grep /dev/sda1 | awk '{print $4'})
let PDiscoUsado=(${PDiscoUtulizado}*100)/${DiscoTamano}
let PDiscoDisponible=100-${PDiscoUsado}
echo "Disco Disponible:" $PDiscoDisponible%
##################################################################
#Speed Test Cli
SpeedTest=$(speedtest-cli)
speedtest-cli > internet.txt 
Download=$( cat internet.txt | grep Download | awk '{print $2}')
Upload=$( cat internet.txt | grep Upload | awk '{print $2}')
Ping=$( cat internet.txt | grep ms | awk '{print $9}')
echo "Ping:" $Ping
echo "VDownload:" $Download
echo "VUpload:" $Upload
###################################################################
#Comando para enviarlo al servicio web
#wget -q -O- "http://api.thingspeak.com/update?key=$KEY&field1=$PromedioCPU&field2=$PMemoriaUsada&field3=$PDiscoDisponible&field4=$Upload&field5=$Download&field6=Ping"
###################################################################