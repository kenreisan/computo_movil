//
//  ViewController.swift
//  piedraPapelTijeras
//
//  Created by Donovan Romero on 3/30/19.
//  Copyright © 2019 BigDoorStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetScreen()
        // Do any additional setup after loading the view.
    }

    func resetScreen() {
        computerLabel.text = "🤖"
        statusLabel.text = "Rock, paper or scissors?"
        rockButton.isEnabled = true
        rockButton.isHidden = false
        paperButton.isEnabled = true
        paperButton.isHidden = false
        scissorButton.isEnabled = true
        scissorButton.isHidden = false
        playAgainButton.isHidden = true
        playAgainButton.isEnabled = false
    }
    
    func play(_ playerPlay: Sign) {
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorButton.isEnabled = false
        
        let computer = randomSign()
        let gameResult = playerPlay.judge(computer)
        
        computerLabel.text = computer.emoji
        
        switch gameResult {
        case .draw:
            statusLabel.text = "Draw"
        case .lose:
            statusLabel.text = "You Lose..."
        case .victory:
            statusLabel.text = "You Win!"
        case .begin:
            statusLabel.text = "Rock, paper or scissors?"
        }
        
        switch playerPlay {
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorButton.isHidden = true
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
        playAgainButton.isEnabled = true
        
    }
    
    @IBAction func playAgainAction(_ sender: Any) {
        resetScreen()
    }
    
    @IBAction func rockAction(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperAction(_ sender: Any) {
        play(Sign.paper)
    }
    
    @IBAction func scissorAction(_ sender: Any) {
        play(Sign.scissors)
    }
    
}

