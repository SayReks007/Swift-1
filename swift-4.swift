import Foundation

class Car{
    let mark: String
    var engine: Engine = .Off
    var window: Open = .Off
    var V_Trunk: Int = 0
    var V_loadedCargo: Int = 0
    enum Engine: String{
        case Off = "заглушен"
        case On = "запущен"
    }
    enum Open:String{
        case Off = "закрыты" 
        case On = "открыты"
    }
    init(mark: String ,engine: Engine, window: Open){
        self.mark = mark
        self.engine = engine
        self.window = window
    }
    init(mark: String ,engine: Engine, window: Open, V_Trunk: Int, V_loadedCargo: Int){
        self.mark = mark
        self.engine = engine
        self.window = window
        self.V_Trunk = V_Trunk
        self.V_loadedCargo = V_loadedCargo
    }
    func Turn_Engine(Turn: Engine){
        switch Turn {
        case .On :
            self.engine = .On
            print("Двигатель \(Turn.rawValue)")
            case .Off :
                self.engine = .Off
                print("Двигатель \(Turn.rawValue)")
        default:
            break
        }
    }
    func Open_Windows(Turn:Open) {
        switch Turn{
        case .On:
            self.window = .On
            print("Окна\(Turn.rawValue)")
            case .Off:
                self.window = .Off
                print("Окна\(Turn.rawValue)")
        default:
            break 
        }
        
    }
    
    func directory() {
        print("Автомобиль: \(mark), Двигатель \(engine.rawValue), Окна \(window.rawValue)")
    }
    
}
class SportCar: Car {
    var mode: Mode_speed  = .Neitral
    enum Mode_speed: String{
        case Sport = "Sport"
        case Neitral = "Neitral"
        case Drive = "Drive"
    }
    func Change_Mode(Mode: Mode_speed) {
        switch Mode {
        case .Sport:
            self.mode = .Sport
            print("Режим \(Mode.rawValue) включен")
            case .Neitral:
                self.mode = .Neitral
                print("Режим\(Mode.rawValue) включен")
                case .Drive:
                    self.mode = .Drive
                    print("Режим\(Mode.rawValue) включен")
        default:
            break
        }
    }
}

class TrunkCar: Car{
//      var V_Trunk: Int = 0    //
//      var V_allCargo: Int = 0   //
//      super init(V_Trunk: Int ,V_allCargo: Int){     //
//          self.V_Trunk = V_Trunk                             //Как это должно работать?
//          self.V_allCargo = V_allCargo      //
//          
//      }
    func Load_Cargo(V_cargo: Int) {
        switch V_cargo {
        case V_cargo where V_cargo > V_Trunk - V_loadedCargo:
            print("Груз не помещается")
        case V_cargo where V_cargo == V_Trunk - V_loadedCargo:
            print("Багажник полностью забит")
            self.V_loadedCargo = V_Trunk
        case V_cargo where V_cargo < V_Trunk - V_loadedCargo:
            self.V_loadedCargo += V_cargo
            print("Груз успешно загружен")
            print("Осталось места: \(V_Trunk - V_loadedCargo) M\"")
        default:
            break
        }
        
    }
    override func directory() {
        print("Автомобиль: \(mark), Двигатель \(engine.rawValue), Окна \(window.rawValue)" + " Объем багажника: \(V_Trunk) M\", Объем всего груза: \(V_loadedCargo) M\"")
    }
    
}

var JustCar = Car(mark: "BMW", engine: .Off, window: .On, V_Trunk: 150,V_loadedCargo: 25)
JustCar.engine = .On
JustCar.Open_Windows(Turn: .Off)
JustCar.Turn_Engine(Turn: .Off)
var SuperCar = SportCar(mark: "Lamborghini", engine: .Off, window: .Off)
SuperCar.Turn_Engine(Turn: .On)
SuperCar.Open_Windows(Turn: .On)
SuperCar.Change_Mode(Mode: .Sport)
var TrunkCar1 = TrunkCar(mark: "Kamaz", engine: .Off, window: .Off,V_Trunk: 550,V_loadedCargo: 100)
TrunkCar1.Load_Cargo(V_cargo: 350)
TrunkCar1.Load_Cargo(V_cargo: 120)
TrunkCar1.Load_Cargo(V_cargo: 100)
TrunkCar1.Turn_Engine(Turn: .On)
JustCar.directory()
SuperCar.directory()
TrunkCar1.directory()
