//Function Types as Parameter Types
// Based on  >> https://docs.swift.org/swift-book/LanguageGuide/Functions.html

func subFrom(from: Double , subtract: Double) -> Double {
    return from - subtract
}

func addTo(to: Double , add: Double) -> Double {
    return to + add
}

func doMath( mathfunction: (Double, Double) -> Double, to: Double,  number: Double) ->Double {
   return mathfunction(to, number)
} 

print(doMath(mathfunction: addTo, to: 100, number: 50))

//PRINTS 150.0
