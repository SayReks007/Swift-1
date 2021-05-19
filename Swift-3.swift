import Foundation
//1
struct SportCar {
    let mark = ""
    let year = 0
    var V_body = 0
    var V_trunk = 0
    var turn_motor = "No"
    var open_window = "No"
    var full_trunk = "Yes"
    var V_allCargo = 0
    mutating func Action(Action: ){
        switch Action {
        case .Load_Cargo:
            V_allCargo += Load_Cargo.rawValue
            case .Turn_motor(let a) where a == .On:
                turn_motor = "Yes"
                print("Мотор работает")
        case .Turn_motor(let a) where a == .Off:
            turn_motor = "No"
            print("Мотор неработает")
        default:
            break
        }
        
    }
}
struct TrunkCar {
    let mark = ""
    let year = 0
    var V_body = 0
    var V_trunk = 0
    var turn_motor = "No"
    var open_window = "No"
    var full_trunk = "Yes"
}
enum Action_car{
    enum Turn_Motor{
        case Off
        case On
    }
    enum Open_Window{
        case Off
        case On
    }
    case Load_Cargo(V_Cargo: Int)
    case unLoad(V: Int)
}