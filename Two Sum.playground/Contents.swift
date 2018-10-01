import UIKit




//var array = [3, 2, 4]
// var target = 6
var array = [2, 5, 5, 11]
var target = 10




func twoSum(_ array: [Int], target: Int) -> [Int] {
  
  
  
  for i in 0..<array.count {
    print(i)
    for j in 0..<array.count {
      print(j)
      if array[i] + array[j] == target && i != j {
        return [i, j]
      }
    }
  }
  
  
  return []
}

twoSum(array, target: target)
