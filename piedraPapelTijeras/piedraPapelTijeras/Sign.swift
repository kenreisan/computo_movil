//
//  Sign.swift
//  piedraPapelTijeras
//
//  Created by Eduardo Romero on 3/30/19.
//  Copyright © 2019 BigDoorStudios. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0{
        return  .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign{
    case rock, paper, scissors
    
    var emoji: String{
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func judge(_ computerPlay: Sign) -> GameState {
        switch self {
        case .rock:
            switch computerPlay{
            case .rock:
                return GameState.draw
            case .paper:
                return GameState.lose
            case .scissors:
                return GameState.victory
            }
            
        case .paper:
            switch computerPlay{
            case .rock:
                return GameState.victory
            case .paper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
            
        case .scissors:
            switch computerPlay{
            case .rock:
                return GameState.lose
            case .paper:
                return GameState.victory
            case .scissors:
                return GameState.draw
            }
        }
    }
}
