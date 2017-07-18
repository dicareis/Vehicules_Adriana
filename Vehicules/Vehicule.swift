
import Foundation

class Vehicule {
    var couleur : String
    var image : String
    var nom : String
    
    
    init (couleur: String, image: String, nom : String){
        self.couleur = couleur
        self.image = image
        self.nom = nom
    }
    // toute les classe vont heriter de cette methode aussi
    func quiSuitJe() -> String{
        return "Je suis un vehicule de couelur \(couleur)"
    }
}//end class Vehicule
