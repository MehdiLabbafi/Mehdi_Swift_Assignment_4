
//WaterSystem protocol
protocol WaterSystem {
    var waterCapacity: Double { get }
    func fillWaterTank()
    func drainWaterTank()
}

//ElectricitySystem protocol
protocol ElectricitySystem {
    var batteryLevel: Double { get }
    func chargeBattery()
    func checkBatteryLevel()
}

//Trailer protocol
protocol Trailer {
    var brand: String { get }
    func startEngine()
    func stopEngine()
}

//ClimateControl protocol
protocol ClimateControl {
    var temperature: Double { get }
    func setTemperature(_ temperature: Double)
    func adjustFanSpeed()
}

//EntertainmentSystem protocol
protocol EntertainmentSystem {
    var hasTV: Bool { get }
    func turnOnTV()
    func turnOffTV()
}

//Camper Class
class Camper: WaterSystem, ElectricitySystem, Trailer, ClimateControl, EntertainmentSystem {
    // Properties for WaterSystem protocol
    var waterCapacity: Double
    
    // Properties for ElectricitySystem protocol
    var batteryLevel: Double
    
    // Properties for Trailer protocol
    var brand: String
    
    // Properties for ClimateControl protocol
    var temperature: Double
    
    // Properties for EntertainmentSystem protocol
    var hasTV: Bool
    
    // Initializer
    init(brand: String, waterCapacity: Double, batteryLevel: Double, temperature: Double, hasTV: Bool) {
        self.brand = brand
        self.waterCapacity = waterCapacity
        self.batteryLevel = batteryLevel
        self.temperature = temperature
        self.hasTV = hasTV
    }
    
    // Methods for Trailer protocol
    func startEngine() {
        print("Engine started.")
    }
    
    func stopEngine() {
        print("Engine stopped.")
    }
    
    // Methods for ClimateControl protocol
    func setTemperature(_ temperature: Double) {
        self.temperature = temperature
        print("Temperature set to \(temperature) degrees Celsius.")
    }
    
    func adjustFanSpeed() {
        print("Fan speed adjusted.")
    }
    
    // Methods for WaterSystem protocol
    func fillWaterTank() {
        print("Water tank filled.")
    }
    
    func drainWaterTank() {
        print("Water tank drained.")
    }
    
    // Methods for ElectricitySystem protocol
    func chargeBattery() {
        print("Battery charged.")
    }
    
    func checkBatteryLevel() {
        print("Battery level checked.")
    }
    
    // Methods for EntertainmentSystem protocol
    func turnOnTV() {
        print("TV turned on.")
    }
    
    func turnOffTV() {
        print("TV turned off.")
    }
}

// Create an instance of Camper
let myCamper = Camper(brand: "MyBrand", waterCapacity: 100.0, batteryLevel: 50.0, temperature: 25.0, hasTV: true)
myCamper.startEngine()
myCamper.fillWaterTank()
myCamper.chargeBattery()
myCamper.setTemperature(20.0)
myCamper.adjustFanSpeed()
myCamper.turnOnTV()
myCamper.turnOffTV()


