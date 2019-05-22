//
//  DiscografiaVC.swift
//  segundoParcial
//
//  Created by Donovan Romero on 5/21/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

var titulo: String!
var anio: String!
var precio: String!
var canciones: String!
var tiempo: String!
var precioCancion: String!
var imagenDisco: String!

class DiscografiaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func deepButton(_ sender: Any) {
        titulo = "Deep River"
        anio = "2002"
        precio = "$ 120.00"
        imagenDisco = "utada_Deep_River"
        canciones = "01. Sakura Drops\n02. Traveling\n03. Shiawase ni Narō\n04. Deep River\n05. Letters\n06. Play Ball\n07. Tokyo Nights\n08. A.S.A.P.\n09. Uso Mitai na I Love You\n10. Final Distance\n11. Bridge (Interlude)\n12. Hikari"
        tiempo = "4:58\n5:14\n4:46\n4:37\n4:48\n4:14\n4:43\n4:56\n4:49\n5:38\n1:09\n5:02"
        precioCancion = "$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00"
    }
    
    @IBAction func exodusButton(_ sender: Any) {
        titulo = "Exodus"
        anio = "2004"
        precio = "$ 150.00"
        imagenDisco = "utada_Exodus"
        canciones = "01. Opening\n02. Devil Inside\n03. Exodus '04\n04. The Workout\n05. Easy Breezy\n06. Tippy Toe\n07. Hotel Lobby\n08. Animato\n09. Crossover Interlude\n10. Kremlin Dusk\n11. You Make Me Want to\n      Be a Man\n12. Wonder 'Bout\n13. Let Me Give You My Love\n14. About Me"
        tiempo = "1:50\n3:58\n4:32\n4:01\n4:03\n4:15\n4:30\n4:31\n1:18\n5:14\n4:37\n\n3:48\n3:38\n4:00"
        precioCancion = "$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n\n$ 15.00\n$ 15.00\n$ 15.00"
    }
    
    @IBAction func heartButton(_ sender: Any) {
        titulo = "Heart Station"
        anio = "2008"
        precio = "$ 120.00"
        imagenDisco = "utada_Heart_Station"
        canciones = "01. Fight the Blues\n02. Heart Station\n03. Beautiful World\n04. Flavor of Life\n05. Stay Gold\n06. Kiss & Cry\n07. Gentle Beast Interlude\n08. Celebrate\n09. Prisoner of Love\n10. Take 5\n11. Boku wa Kuma\n12. Niji-iro Basu\n13. Flavor of Life"
        tiempo = "4:10\n4:36\n5:17\n5:25\n5:14\n5:06\n1:13\n4:26\n4:46\n3:42\n2:23\n5:50\n4:46"
        precioCancion = "$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00\n$ 15.00"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detalleDisco = segue.destination as! DetalleDiscoVC
        
        detalleDisco.titleDisc = titulo
        detalleDisco.year = anio
        detalleDisco.priceDisc = precio
        detalleDisco.songs = canciones
        detalleDisco.timeSongs = tiempo
        detalleDisco.priceSongs = precioCancion
        detalleDisco.discImageName = imagenDisco
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

