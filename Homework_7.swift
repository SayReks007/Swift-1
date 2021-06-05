import Foundation

enum payError: Error {
    case nobalance
    case nogood
    case nopassword
}

struct Math {
    var math: Int
}

class Card {
    var nomber: Int
    var CVVcode: Int
    var Password: Int 
    var balance: Int
    init(nomber: Int, CVVcode:Int, Password: Int, balance: Int){
        self.nomber = nomber
        self.CVVcode = CVVcode
        self.Password = Password
        self.balance = balance
    }
    func Pay(good: String, password: Int, bank: String, Password: Int,balance: inout Int) throws {
        let goods = [
            "Газировка": Math(math: 123),
            "Машина": Math(math: 1_220_000),
            "Смартфон": Math(math: 18_000),
            "Кросовки": Math(math: 2500),
            "Наушники": Math(math: 8890)
        ]
        guard let good1 = goods[good] else{ 
            throw payError.nogood
        }
        guard password == Password else{
            throw payError.nopassword
        }
        guard balance > good1.math else{
            throw payError.nobalance
        }
        balance -= good1.math
        print("Куплен \(good) на сумму \(good1.math) с карты \(bank)")
        print("Осталось \(balance)")
    }
}

var Banknames: Set = [
    "Сбербанк",
    "Альфабанк",
    "ВТБ"
]
func Pay_in_Card (bank: String, good: String, password: Int, Password: Int) throws{
    try MyCard.Pay(good: good, password: password,bank: bank, Password: Password, balance: &MyCard.balance)
}

var MyCard = Card(nomber: 123456, CVVcode: 123, Password: 6545, balance: 24_000) // Личная карта, можно менять данные самой карты

do{
    try Pay_in_Card(bank: "Сбербанк", good: "Смартфон", password: 6545, Password: MyCard.Password) // Тут можно изменять входный параметры -> создавать ошибки
}catch payError.nogood{
    print("Такого товара нет в магазине")
}catch payError.nopassword{
    print("Неверный пароль")
}catch payError.nobalance{
    print("Небостаточно средств")
}

print(MyCard.balance)
