import UIKit

enum Stamp {
    case Audi, Peugeot, Volvo
}

enum action{
    case startEngine, stopEngine, openWindow, closeWindow, loadCargo, unloadCargo
}

struct SportCar {
    let stamp: Stamp
    let year: Int
    let volume: Int
    var start: Bool
    var openWindows: Bool
    var filledVolume: Int
    
    mutating func doAction(_ newAction: action){
        switch newAction {
        case .startEngine: start=true
        case .stopEngine: start = false
        case .openWindow: openWindows=true
        case .closeWindow: openWindows=false
        case .loadCargo: filledVolume=filledVolume+1
        case .unloadCargo: filledVolume=filledVolume-1
        }
    }
}

struct TruckCar {
    let stamp: Stamp
    let year: Int
    let volume: Int
    var start: Bool
    var openWindows: Bool
    var filledVolume: Int
    
    mutating func doAction(_ newAction: action){
        switch newAction {
        case .startEngine: start=true
        case .stopEngine: start = false
        case .openWindow: openWindows=true
        case .closeWindow: openWindows=false
        case .loadCargo: filledVolume=filledVolume+1
        case .unloadCargo: filledVolume=filledVolume-1
        }
    }
}

var sportCar1 = SportCar(stamp: .Audi, year: 2014, volume: 2000, start: false, openWindows: false, filledVolume: 0)
var sportCar2 = SportCar(stamp: .Volvo, year: 2015, volume: 1000, start: false, openWindows: false, filledVolume: 0)
var truckCar1 = TruckCar(stamp: .Peugeot, year: 2019, volume: 20000, start: false, openWindows: false, filledVolume: 0)
var truckCar2 = TruckCar(stamp: .Volvo, year: 2010, volume: 10000, start: false, openWindows: false, filledVolume: 0)

sportCar1.doAction(.closeWindow)
sportCar2.doAction(.startEngine)
truckCar1.doAction(.loadCargo)
truckCar1.doAction(.loadCargo)
truckCar2.doAction(.startEngine)
truckCar2.doAction(.openWindow)

print(sportCar1)
print(sportCar2)
print(truckCar1)
print(truckCar2)
