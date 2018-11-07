//inout funciotion 
// based on material found on >> https://docs.swift.org/swift-book/LanguageGuide/Functions.html

var myArray:[Int] = [2, 6, 1, 99, 8, 77, 55]

func inOutSimpleSort(array: inout [Int]){

  var swaping: Bool
  
  repeat {
  
      swaping = false
      
      for i in 0 ..< myArray.count - 1 {
      
          if array[i] > array[i + 1] {
              var aux = array[i]
              array[i] = array[i + 1]
              array[i + 1] = aux
              
              swaping = true
          }
          
        }
        
  } while swaping
 
} 

inOutSimpleSort(array: &myArray)

print(myArray)

// prints [1, 2, 6, 8, 55, 77, 99]
