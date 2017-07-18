//
//  Automobile.swift
//  Vehicules
//
//  Created by eleves on 2017-07-18.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

import Foundation



//======================================================
class AutoMobile: Vehicule {
    // une propriete de plus : La marque
    var  marque: String
    // un contrusteur avec deux parametres(initialiser)
    init(couleur: String, marque: String, image: String, nom: String) {
        self.marque = marque
        super.init(couleur: couleur, image: image, nom: nom)
    }
    //---------------------------------
    override func quiSuitJe() -> String{
        return "Je suis une automobile \(couleur) de marque \(marque)"
    }
}//end class AutoMobile
//======================================================
