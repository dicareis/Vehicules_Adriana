
import Foundation

//======================================================
class Moto: Vehicule {
    
    var moteur: String
    
    init(couleur: String, moteur: String, image: String, nom: String) {
        self.moteur = moteur
        super.init(couleur: couleur, image: image, nom: nom)
    }
    
    override func quiSuitJe() -> String {
        return "Je suis une Motocyclette \(couleur) de moteur \(moteur)"
    }
    
}// end class Moto
