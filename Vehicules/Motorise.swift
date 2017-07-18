//
//  Motorise.swift
//  Vehicules
//
//  Created by eleves on 2017-07-18.
//  Copyright © 2017 GrassetSucre. All rights reserved.
//

import Foundation
//======================================================
class Motorise: Vehicule{
    var longueur: String
    
    init(couleur: String, longueur: String, image: String, nom: String) {
        self.longueur = longueur
        super.init(couleur: couleur, image: image, nom: nom)
    }
    
    //---------------------------------
    override func quiSuitJe() -> String{
        return "Je suis une automobile \(couleur) de longueur \(longueur)"
    }



}
