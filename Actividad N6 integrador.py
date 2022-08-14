from functools import reduce 

def Gastos():
    Historial2 = [23500, 5960, 2300, 10200, 8900]
    length = len(Historial2)
    gastoTotal = 0
    
    
    gastoMayor = list(filter(lambda x: x > 5000, Historial2))
    for gasto in gastoMayor:
        return gastoMayor
    

print(Gastos())



