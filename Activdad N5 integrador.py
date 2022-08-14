Historial = [[2350, 5960, 23000], [1000, 8900]]
gastoTotal = sum(sum(Historial, []))

for array in Historial:
    if array >= 30000:
        print(gastoTotal)
    else:
        print('Gasto por encima de lo presupuestado')
    

