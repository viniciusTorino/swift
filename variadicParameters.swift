//Variadic Parameters
// From : https://docs.swift.org/swift-book/LanguageGuide/Functions.html

func media(numbers: Float...) -> Float {
    var total : Float = 0
    for number in numbers {
        total += number
    }
    var media : Float = total / Float(numbers.count) //  << I MUST CAST THE VALUE TO FLOAT OR I'LL GET AN ERROR DURING THE DIVISION 
    
    return media
}
print(media(numbers: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

//IT WILL OUTPUT 5.5
