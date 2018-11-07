var player : [String : String] = [:] 

player["player1"] = "Scissors"
//player["player2"] = "Rock" << defined using default value 

//omitting player1's label and using default value for player2
func winnerAndLoser(_ player1: String?, player2 = "Rock") -> (winner:String, loser:String){
    guard let player1 = player1 else {
        return ("NOBODY WON", "NOBODY WON")
    }
    
    var winner, loser : String
    
    switch player1 {
        case "Rock" where player2 == "Scissors":
            winner = "player1"
            loser = "player2"
        case "Papel" where player2 == "Rock":
            winner = "player1"
            loser = "player2"
        case "Scissors" where player2 == "Papel":
            winner = "player1"
            loser = "player2"
        case player2 :
            winner = "DRAW"
            loser = "DRAW"
        default:
            //If there isn't any typo .. the only possible output beside our previous is that player2 won 
            winner = "player2"
            loser = "player1"
    }
        return (winner, loser)
    
}
var winnerAndLoserOfMatch =  winnerAndLoser(player["player1"])

print(winnerAndLoserOfMatch)

