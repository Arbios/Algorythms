
var numbers = [7,5,3,15]
var target = 10


  func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    
    
    for i in 0..<numbers.count {
      for j in 0..<numbers.count {
        if i != j && numbers [i] + numbers[j] == target {
          return [i+1, j+1]
        }
      }
    }
    return []
  }


twoSum(numbers, target)
