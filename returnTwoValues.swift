var player : [String : String] = [:] 

player["player1"] = "Scissors"
player["player2"] = "Rock"

//We could use our wildcard _ to omite a paramenter's label >> label player1: << wont be necessary during the call 
func winnerAndLoser(_ player1: String?, player2: String?) -> (winner:String, loser:String){
    guard let player1 = player1, let player2 = player2 else {
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
            //If there isn't any typo .. the only possible output beside our previous is that player2 won , 
            //so there is not necessary to continue testing it
            winner = "player2"
            loser = "player1"
    }
        return (winner, loser)
    
}
var winnerAndLoserOfMatch =  winnerAndLoser(player["player1"], player2: player["player2"])

print(winnerAndLoserOfMatch)

