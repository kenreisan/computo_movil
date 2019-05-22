//
//  ViewController.swift
//  segundoParcial
//
//  Created by 2019-2 on 4/29/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTree: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func revisar(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let codigoGanador = segue.destination as! triviaView
        var resultado = 0
        
        if switchOne.isOn {
            resultado = resultado + 1
        }
        
        if switchTwo.isOn {
            resultado = resultado + 1
        }
        
        if !switchTree.isOn {
            resultado = resultado + 1
        }
        
        if resultado < 3 {
            codigoGanador.codigo = "Perdiste"
            codigoGanador.promoCode = "Try Again"
        }else{
            codigoGanador.codigo = "Ganaste"
            codigoGanador.promoCode = "CODIGO: LUZ"
        }
    }
}


