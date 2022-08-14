#10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.
#Juan,  Mario,  Ariel,  Josefina,  Marianella.
#Ordenarla alfabéticamente y mostrarla por pantalla.
clientesList =['Juan','Mario','Ariel','Josefina','Marianella']
print(sorted(clientesList));
#8)Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
#7510, 7960, 76180, 800, 4100
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”.
#Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.
def min_valor (valores):
    minimo = valores[0]
    
    for i in range(0,len(tupla_Historial4)):
        if valores[i] < minimo:
            minimo = valores[i]
            
    return minimo
    
tupla_Historial4 = (7510, 7960, 76180, 800, 4100)

print('el valor mínimo de atención gastada en Olivia fue $',min_valor(tupla_Historial4))