




var lostGPS: Bool = false
var lowBattery: Bool = true


enum TeslaError: Error {
  case lostGPS
  case lowBattery
}


func autoDrive() throws {
  if lostGPS {
    throw TeslaError.lostGPS
  }
  if lowBattery {
    throw TeslaError.lowBattery
  }
}


do {
  try autoDrive()
} catch TeslaError.lostGPS {
  print("We are losted GPS signal")
} catch TeslaError.lowBattery {
  print("You need yo charge your car")
}


// Define Error Type
enum CourseError: Error {
  case noName
}


// Create Structure
struct UdemyCourse {
  let courseName: String
  init(name: String) throws {
    if name == "" { throw CourseError.noName }
    self.courseName = name
  }
}

// Init & Handle Error

do {
  try UdemyCourse(name: "UIKit Fundamentals with Bob")
} catch CourseError.noName {
  print("Bob, you need to enter the name")
}
