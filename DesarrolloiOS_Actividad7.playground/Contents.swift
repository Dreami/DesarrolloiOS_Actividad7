import UIKit
//Valor por tipo y referencia

var costo_referencia:[Float] = [8.3, 10.5, 9.9]

func impuestos(costo_referencia:[Float]) -> [Float] {
    var costo_impuesto:[Float] = []
    for referencia:Float in costo_referencia {
        costo_impuesto.append(referencia * 0.16 + referencia)
    }
    return costo_impuesto
}
print("Costos: \(costo_referencia)")
print("Costos con impuestos: \(impuestos(costo_referencia))")

func sumaTres(twoValues:(Int, Int), thirdValue:Int) -> Int {
    return (twoValues.0 + twoValues.1 + thirdValue)
}

print("Suma de 2 + 9 + 17 = \(sumaTres((2, 9), thirdValue:17))")

//Personalizados y genericos

var val1 = 4;
var val2 = 6

func exchangeValues<T>(a:T, b:T) -> Void {
    let temporaryA = val1
    val1 = val2
    val2 = temporaryA
}

exchangeValues(val1, b: val2)
print("a = \(val1)")
print("b = \(val2)")

let datos:[Int] = [3, 7, 9, 2]

func transformar<T>(d:T, acumula:(T) -> T) -> T{
    return acumula(d)
}

print("\(transformar(datos) {(d) in d})")

//Libreria Swift
/*
Aplica la función de librería de Swift map para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplica el impuesto de 16% y asígnala a la variable impuesto.
Aplica la función de la librería de Swift filter para la colección resultante impuesto del paso A, en donde obtengas sólo los precios mayores a 6.0 y asígnalos a la variable precio_menor.
*/
var precios:[Float] = [4.2, 5.3, 8.2, 4.5]
var impuesto = impuestos(precios)

func obtenerMenor(listaPrecios:[Float])