//
//  triviaView.swift
//  segundoParcial
//
//  Created by 2019-2 on 4/29/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class triviaView: UIViewController {

    @IBOutlet weak var codigoTrivia: UILabel!
    @IBOutlet weak var promoLabel: UILabel!
    
    var codigo: String!
    var promoCode: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        codigoTrivia.text = codigo
        promoLabel.text = promoCode
    }
        
}
