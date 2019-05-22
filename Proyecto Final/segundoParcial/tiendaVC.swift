//
//  tiendaVC.swift
//  segundoParcial
//
//  Created by macbook on 4/29/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class tiendaVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var priceItemOne: UITextField!
    @IBOutlet weak var priceItemTwo: UITextField!
    @IBOutlet weak var promoDiscount: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var compraLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        errorLabel.isHidden = true
        compraLabel.isHidden = true
        self.priceItemTwo.delegate = self;
        self.priceItemOne.delegate = self;
        
    }
    
    @IBAction func comprarButton(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ventaRealizada = segue.destination as! CompraVC
        
        let cant:Double = Double(priceItemOne.text!) ?? 0.0
        let cant2:Double = Double(priceItemTwo.text!) ?? 0.0
        let descuento = promoDiscount.text
        
        var resultadoCompra = (cant * 300.0) + (cant2 * 2000.0)
        
        if resultadoCompra == 0 {
            ventaRealizada.mensaje = "⛔️ERROR\nFaltan llenar\nalgunos datos"
            ventaRealizada.total = ""
            ventaRealizada.imageName = "kuma sorry"
        }
        else{
            
            ventaRealizada.imageName = "kuma_ok"
            ventaRealizada.mensaje = "Gracias por su compra 😄"
            
            if descuento == "LUZ" {
                resultadoCompra = resultadoCompra/2
                ventaRealizada.descuento = "Descuento Activado!\nTotal"
            }
            else{
                ventaRealizada.descuento = "Total"
            }
            
            ventaRealizada.total = String(format: "$ %.2f", resultadoCompra)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
}
