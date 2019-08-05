//
//  main.swift
//  snakes_and_ladders
//
//  Created by Lucas JAHIER on 05/08/2019.
//  Copyright © 2019 Lucas JAHIER. All rights reserved.
//

import Foundation

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
var square: Int = 0
var diceRoll: Int = 0
var nbrMoreFinalSquare: Int = 0

board[03] = +08
board[06] = +11
board[09] = +09
board[10] = +02
board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08



while square < finalSquare {
    // roll the dice
    diceRoll = Int.random(in: 1 ... 6)
    print("Dice roll: \(diceRoll)")
    
    // move by the rolled amount
    square += diceRoll
    
    // test if the square value exist on board array
    if square < board.count {
        square += board[square]
    }
    
    // get the number of points above 25 and store it on variable
    if square > finalSquare {
        nbrMoreFinalSquare = square - finalSquare
        square = finalSquare - nbrMoreFinalSquare
    }
    
    print(square)
}

print("Congrats you have win")
