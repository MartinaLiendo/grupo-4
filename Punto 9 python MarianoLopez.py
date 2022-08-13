#Punto 9 python Mariano Lopez

Historial5 = (8520, 9510, 7530, 3570, 1590)

#Creo la funcion
def Valor_Maximo(tup):
    
    #Declaro la variable que va a tener el valor maximo
    val_max = 0

    #Recorro la tupla con ciclo for
    for i in tup:
        
        if  i > val_max:
          val_max = i
          
    #Retorno el valor mas alto
    return val_max

#Muestro el resultado de la funcion por consola
print(Valor_Maximo(Historial5))
        
