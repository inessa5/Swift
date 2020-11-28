import UIKit


 enum Stamp : String{
    case Audi="Audi", Peugeot="Peugeot", Volvo="Volvo"
 }

enum action: String{
     case startEngine = "Автомобиль запущен", stopEngine = "Автомобиль остановлен", openWindow="Окна открыты", closeWindow = "Окна закрыты", loadCargo = "Груз добавлен", unloadCargo = "Груз убавлен"
 }

 class Car {
     let stamp: Stamp
     let year: Int
     var start: Bool
     var openWindows: Bool

    init(stamp: Stamp, year: Int, start: Bool, openWindows: Bool) {
        self.stamp = stamp;
        self.year = year;
        self.start = start;
        self.openWindows = openWindows;
    }
    func doAction(_ newAction: action){
         switch newAction {
         case .startEngine: start=true
         case .stopEngine: start = false
         case .openWindow: openWindows=true
         case .closeWindow: openWindows=false
         default: print("Это действие не подходит")
         }
        print("Автомобиль "+self.stamp.rawValue+" выполнил действие:" + newAction.rawValue)
     }
    
    func printAll()  {
        print("Автомобиль "+self.stamp.rawValue+", год " + self.year.description)
    }
 }
class SportCar: Car {
    
 }

class TruckCar: Car {
     let volume: Int
     var filledVolume: Int
    
    init(stamp: Stamp, year: Int, start: Bool, openWindows: Bool, volume: Int) {
        self.volume = volume
        self.filledVolume = 0
        super.init(stamp: stamp, year: year, start: start, openWindows: openWindows)
    }
    override func doAction(_ newAction: action){
         switch newAction {
         case .loadCargo: filledVolume=filledVolume+1
         case .unloadCargo: filledVolume=filledVolume-1
         default: super.doAction(newAction); return
            print("Автомобиль "+self.stamp.rawValue+" выполнил действие:" + newAction.rawValue)

         }
     }
    
    override func printAll()  {
        print("Грузовой автомобиль "+self.stamp.rawValue+", год " + self.year.description + " загружен на "+self.filledVolume.description)
    }
 }

 var sportCar1 = SportCar(stamp: .Audi, year: 2014, start: false, openWindows: false)
 var sportCar2 = SportCar(stamp: .Volvo, year: 2015, start: false, openWindows: false)
 var truckCar1 = TruckCar(stamp: .Peugeot, year: 2019, start: false, openWindows: false, volume: 2000)
 var truckCar2 = TruckCar(stamp: .Volvo, year: 2010, start: false, openWindows: false, volume: 100000)

 sportCar1.doAction(.closeWindow)
 sportCar2.doAction(.startEngine)
 truckCar1.doAction(.loadCargo)
 truckCar1.doAction(.loadCargo)
 truckCar2.doAction(.startEngine)
 truckCar2.doAction(.openWindow)

sportCar1.printAll()
sportCar2.printAll()
truckCar1.printAll()
truckCar2.printAll()
