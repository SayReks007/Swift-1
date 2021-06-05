import Foundation
struct queue<T: Comparable> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop()-> T {
        return items.removeFirst()    
    }
    func sort<T:Comparable>(_ items: inout [T]){
        items = items.sorted(by: { (s1,s2) -> Bool in return s1 < s2 })
    }
    func filter(_ items: inout [Int]){
        items = items.filter({ $0 > 150})
        print("\(items.count) человек прошло по росту")
    }
    subscript(item: Int,items: [T]) -> T?{
        if item < items.count{
            return items[item]
        }
        return nil
    }
}
var Queue = [175,167,143,178,145,198,170,150,165]
var Rost = queue(items: Queue)
Rost.pop()
Rost.push(204)
print(Rost.items)
Rost.sort(&Rost.items)
print(Rost.items)
Rost.items
print(Rost.items)
var items = Rost.items
print(Rost[0,items])
print(Rost[5,items])
print(Rost[10,items])