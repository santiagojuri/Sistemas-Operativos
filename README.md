# README

Requerimientos software:

  - Tener python 2.4-3.4
  - Tener instalado el paquete Sysstat
  - Tener instalado el speedtest-cli

Requerimientos Hardware:

    - ARMv6-compatible processor rev 7(v6l)
    - Memoria ram: 434MB
    - Disco : 8GB
    
Formas de instalacion en linux de Los paquetes necesarios:
    - apt-get install sysstat
    - pip install speedtest-cli
    
Ejecucion del script(SciptSISOPER.sh):

    1.Guardar el script en algun directorio o carpeta ej: Documents
    2.Entrar por terminal a la carpeta donde se guardo ej: cd /home/user/Documents
    3.Darle permismo de ejecucion al script : chmod+x ./ScriptSISOPER.sh 
    4 Para ejecutarlo periodicamente cada 180 segundos: watch -n 180 ScriptSISOPER.sh 

Nota : El tiempo de ejecucion del script es mayor a 100 segundos, para mayor seguridad usar tiempos mayores a de 120 segundos

