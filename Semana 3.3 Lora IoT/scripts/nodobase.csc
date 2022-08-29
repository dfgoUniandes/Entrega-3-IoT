atget id id
set ite 0
data p "hola" id id
send p

loop
read mens
rdata mens tipo valor1 valor2
if( tipo == "alerta")
   cprint "Alerta en: longitud" valor1 ", latitud: " valor2
   inc ite
   cprint "Contador nodo: " ite
end

if(tipo == "critico")
   cprint "Nodo descargado en: longitud" valor1 ", latitud: " valor2
   data p "stop"	
   send p
   wait 1000
   stop
end

wait 100

