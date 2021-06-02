import Foundation

// Квадратное уравнение вида ax^2+bx+c
let a: Double = 1
let b: Double = -3
let c: Double = 2
var d: Double = b * b - 4 * a * c
if d>0 {
    var x1 = ( -b + sqrt(d) / (2 * a))
    var x2 = ( -b - sqrt(d) / (2 * a))
    print("2 Корня уравнения: \(x1) и \(x2)")
}else if (d == 0) {
    var x = -b / (2 * a)
    print("1 корень уравнения: \(x)")
} else{
    print("Нет корней")
}


// Даны катеты прямоугольного треугольника
var kat1: Double = 2
var kat2: Double = 3
var gip = sqrt(pow(kat1,2) + pow(kat2,2))
print("Гипотенуза = \(gip)")
var P = kat2 + kat1 + gip
print("Периметр = \(P)")
var S = ( kat1 * kat2 ) / 2
print("S = \(S)")

//Банковский расчет через 5 лет

var sumv: Double = 12000 //Сумма вклада
var per: Double = 15 //%
var sumv1: Double = sumv + sumv * (per / 100)
var sumv2: Double = sumv1 + sumv1 * (per / 100)
var sumv3: Double = sumv2 + sumv2 * (per / 100)
var sumv4: Double = sumv3 + sumv3 * (per / 100)
var sumv5: Double = sumv4 + sumv4 * (per / 100)
print("Итоговая сумма = \(sumv5)")
