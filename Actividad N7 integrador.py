from functools import reduce

def Promedio():
    Historial3 = [9530, 4120, 4580, 1500, 890,7516,426]
    length = len(Historial3)
    promedioTotal = reduce(lambda a,b: a+b, Historial3)
    return promedioTotal

    promedioP = promedioTotal / length
print(Promedio())
