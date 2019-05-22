//
//  CompraVC.swift
//  segundoParcial
//
//  Created by macbook on 4/29/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class CompraVC: UIViewController {
    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mensajeLabel: UILabel!
    @IBOutlet weak var descuentoLabel: UILabel!
    
    var total: String!
    var mensaje: String!
    var descuento: String!
    var imageName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imagen = UIImage(named: imageName)
        
        precioLabel.text = total
        mensajeLabel.text = mensaje
        imageView.image = imagen
        descuentoLabel.text = descuento
        
    }
    
    
    
}
