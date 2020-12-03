enum Stamp : String{
    case Audi="Audi", Peugeot="Peugeot", Volvo="Volvo"
 }

enum action: String{
     case startEngine = "Автомобиль запущен", stopEngine = "Автомобиль остановлен", openWindow="Окна открыты", closeWindow = "Окна закрыты", loadCargo = "Груз добавлен", unloadCargo = "Груз убавлен"
 }

 protocol Car {
     var stamp: Stamp {get set}
     var year: Int {get set}
     var start: Bool {get set}
     var openWindows: Bool {get set}

    func printAll()  
 }

 extension Car {

mutating func startEngine(){
         start=true          
        print("Автомобиль "+self.stamp.rawValue+" запущен ")
     }

 mutating func stopEngine(){
         start=false          
        print("Автомобиль "+self.stamp.rawValue+" остановлен ")
     }

  mutating   func openWindow(){
         self.openWindows=true          
        print("В автомобиле "+self.stamp.rawValue+" окна открыты ")
     }

 mutating     func closeWindow(){
         self.openWindows=false          
        print("В автомобиле "+self.stamp.rawValue+" окна закрыты ")
     }
     func printAll()  {
        print("Автомобиль "+self.stamp.rawValue+", год " + self.year.description)
    }

  //mutating func initial(stamp: Stamp, year: Int, start: Bool, openWindows: Bool) {
  //      self.stamp = stamp;
  //      self.year = year;
  //      self.start = start;
   //     self.openWindows = openWindows;
   // }
     
}



class SportCar: Car {
    var stamp: Stamp
     var year: Int 
     var start: Bool 
     var openWindows: Bool 
     //var description: String
        init(stamp: Stamp, year: Int, start: Bool, openWindows: Bool) {
        self.stamp = stamp;
        self.year = year;
        self.start = start;
        self.openWindows = openWindows;
        //self.description=""
    };

     func printAll() {}

 }

 //extension SportCar: ConsolePrintable {} 
 
 class TruckCar: Car {
     var stamp: Stamp
     var year: Int 
     var start: Bool 
     var openWindows: Bool 
    var volume: Int
     var filledVolume: Int
    //var description: String
    init(stamp: Stamp, year: Int, start: Bool, openWindows: Bool, volume: Int) {
        self.volume = volume
        self.filledVolume = 0
        //initial(stamp: stamp, year: year, start: start, openWindows: openWindows)
        self.stamp = stamp;
        self.year = year;
        self.start = start;
       self.openWindows = openWindows;
        //self.description=""
    }

    func loadCargo(){
         self.filledVolume=self.filledVolume+1
         print("Автомобиль "+self.stamp.rawValue+" добавил груз ")


     }
     func unloadCargo(){
          self.filledVolume = self.filledVolume-1
          print("Автомобиль "+self.stamp.rawValue+" разгрузил " )

         }

    func printAll() {}

 }



extension TruckCar: CustomStringConvertible{                        // расширяем протокол
    var description: String{
        return ""//"Автомобиль "+self.stamp.rawValue+", год " + self.year.description    // определяем, что именно будет выводиться
    }

}

extension SportCar: CustomStringConvertible{ 
      var description: String{
        return "Автомобиль \(stamp) год \(year)"    // определяем, что именно будет выводиться
    }
    
}


 var sportCar1 = SportCar(stamp: .Audi, year: 2014, start: false, openWindows: false)
 var sportCar2 = SportCar(stamp: .Volvo, year: 2015, start: false, openWindows: false)
 var truckCar1 = TruckCar(stamp: .Peugeot, year: 2019, start: false, openWindows: false, volume: 2000)
 var truckCar2 = TruckCar(stamp: .Volvo, year: 2010, start: false, openWindows: false, volume: 100000)

 //sportCar1.closeWindow()
 //sportCar2.startEngine()
 //truckCar1.loadCargo()
// truckCar1.loadCargo()
// truckCar2.startEngine()
 //truckCar2.openWindow()

print(sportCar1.description)
//sportCar2.printAll()
//truckCar1.printAll()
//truckCar2.printAll() 


