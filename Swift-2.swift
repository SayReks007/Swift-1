// 1 
var  n1 = 12
func double(number: Int) -> String {
    if  number % 2 == 0{
        return "Yes"
    }
    return "No"
}
print(double(number: n1))

// 2
var n2 = 27
func triple(number: Int) ->String {
    if  number % 3 == 0{
        return "Yes"
    }
    return "No"
}
print(triple(number: n2))

    // 3-4
var a1: [Int] = []
for i in 1...100{
    a1.append(i)
}
//print(a1.count)
for i in stride(from: a1.count-1, to: -1, by: -1) {
    if a1[i] % 2 == 0 || a1[i] % 3 != 0 {
        a1.remove(at: i )
        //print(a1)
    }
}
print(a1)
 
    //5 Числа Фибоначи 
    /*
var m: [Int] = [0,1]
var nn = 2
func Fibonachi_in_Mass(Mass :inout [Int],nn: inout Int ) -> [Int]{
    for i in 1...nn {
        Mass.append(Mass[i-1] + Mass[i])
    }
    return Mass
}
Fibonachi_in_Mass(Mass: &m, nn: &nn)
print(m)
*/
    //6
var n = 500 // Кол-во чисел в массиве
var mass: [Int] = []
for i in 1...n{
    mass.append(i)
}
var p = 2
var p1 = 1
var finish_m: [Int] = mass
while p != p1 {
    
    for i in stride(from: 2 * p, to: n+1, by: p){
        finish_m.removeAll(where: {$0 == i})
        //print(i)
    }
    for i in finish_m{
        p1 = p
        if p<i{
            p1 = p
            p=i
            //print(p)
            break
            
        }
    }
    
}
print(finish_m)
