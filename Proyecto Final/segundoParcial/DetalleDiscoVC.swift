//
//  DetalleDiscoVC.swift
//  segundoParcial
//
//  Created by Donovan Romero on 5/21/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class DetalleDiscoVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var priceDiscLabel: UILabel!
    @IBOutlet weak var songsLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceSongLabel: UILabel!
    @IBOutlet weak var discImage: UIImageView!
    
    var titleDisc: String!
    var year: String!
    var priceDisc: String!
    var songs: String!
    var timeSongs: String!
    var priceSongs: String!
    var discImageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imagenDisco = UIImage(named: discImageName)
        
        discImage.image = imagenDisco
        
        
        titleLabel.text = titleDisc
        yearLabel.text = year
        priceDiscLabel.text = priceDisc
        songsLabel.text = songs
        timeLabel.text = timeSongs
        priceSongLabel.text = priceSongs
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
