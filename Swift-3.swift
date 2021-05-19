import Foundation
//1
struct SportCar {
    let mark: String
    let year: Int
    var V_body: Int
    var V_trunk: Int
    var turn_motor: Motor
    var open_window: Window = .Off
    var V_allCargo = 0
    mutating func Motor(Turn: Motor){
        switch Turn {
        case .On:
            self.turn_motor = .On
            print("Мотор \(Turn.rawValue)")
            case .Off:
                self.turn_motor = .Off
                print("Мотор \(Turn.rawValue)")
        default:
            
            break
        }
        
    }
    func direct(){
        print("Марка: \(mark), \(year) год выпуска, двигатель \(turn_motor.rawValue), Окна \(open_window.rawValue), объем груза \(V_allCargo) m^2.")
    }
}
    
enum Motor: String {
    case On = "заведен"
    case Off = "не заведен"
}
enum Window: String{
    case On = "открыты"
    case Off = "закрыты"
}
struct TrunkCar {
    let mark: String
    let year: Int
    var V_body: Int
    var V_trunk: Int
    var turn_motor: Motor = .Off
    var open_window: Window = .Off
    var V_allCargo: Int = 0
    mutating func Window(Turn: Window){
        switch Turn {
        case .On:
            self.open_window = .On
            print("Окна \(Turn.rawValue)")
        case .Off:
            self.open_window = .Off
            print("Окна \(Turn.rawValue)")
        default:
            break
        }
        
    }
    mutating func Cargo(V_cargo: Int) {
        switch V_cargo {
        case V_cargo where V_cargo > V_trunk - V_allCargo:
            print("Груз не помещается")
            case V_cargo where V_cargo == V_trunk - V_allCargo:
                print("Багажник полностью забит")
                self.V_allCargo = V_trunk
                case V_cargo where V_cargo < V_trunk - V_allCargo:
                    self.V_allCargo += V_cargo
                    print("Груз загружен")
        default:
            break
        }
        
    }
    

    func direct(){
        print("Марка: \(mark), \(year) год выпуска, двигатель \(turn_motor.rawValue), Окна \(open_window.rawValue), объем груза \(V_allCargo) m^2.")
    }
}
var SuperCar = SportCar(mark: "Porche", year: 2012, V_body: 35, V_trunk: 10,turn_motor: .Off)
var Kamaz = TrunkCar(mark: "Kamaz", year: 1993, V_body: 850, V_trunk: 690, turn_motor: .On, open_window: .Off, V_allCargo: 200)
SuperCar.Motor(Turn: .On)
SuperCar.Motor(Turn: .Off)
SuperCar.Motor(Turn: .On)
SuperCar.open_window = .On

Kamaz.Cargo(V_cargo: 300)
Kamaz.Cargo(V_cargo: 190)
Kamaz.Window(Turn: .On)
SuperCar.direct()
Kamaz.direct()


