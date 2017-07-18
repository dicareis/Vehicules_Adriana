import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var labelInfo: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var counter = 0

    
    
    //======================================================
    var fiat = AutoMobile(couleur: "blanche", marque: "fiat", image:"fiat.png", nom:"Fiat")
    var focus = AutoMobile(couleur: "noire", marque: "focus", image:"focus.jpg", nom:"Focus")
    var harley = Moto(couleur: "rouge", moteur: "1200cc", image:"harley.jpg", nom:"Harley")
    var hymer = Motorise(couleur: "brun", longueur: "34", image:"hymer.jpg", nom:"Hymer")
    var prevost = Motorise(couleur: "gris", longueur: "40", image:"prevost.jpg", nom:"Prevost")

    //======================================================
    
    var vehicules: [Vehicule]!

    override func viewDidLoad() {
        super.viewDidLoad()
        vehicules = [fiat, focus, harley, hymer, prevost]
        
        
        // une boucle pour executer les quiSuiJe
        for v in vehicules {
            if let voiture = v as? AutoMobile {
                print (voiture.marque)
               
            }else if let moto = v as? Moto {
                print (moto.moteur)
            }
             print (v.couleur)
            print (v.quiSuitJe())
            
            
        }
        
        

    }

    
 
    
    
    
    
    //---------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.backgroundColor = UIColor.clear
        return vehicules.count
    }
    //---------------------
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if let aLabel = cell?.viewWithTag(200) as? UILabel {
            aLabel.text = "\(vehicules[indexPath.row].nom )"
            aLabel.backgroundColor = UIColor.blue
            aLabel.textColor = UIColor.white
        }
        
        if let aImageView = cell?.viewWithTag(100) as? UIImageView {
            let aImage = UIImage(named: vehicules[indexPath.row].image)
            aImageView.image = aImage
        }

       // cell?.textLabel!.text = "Hello World"
        cell?.textLabel?.textColor = UIColor.black
        cell?.backgroundColor = UIColor.green
        
        counter += 1
        
        return cell!
    }
    //---------------------
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath as IndexPath)!
        selectedCell.contentView.backgroundColor = UIColor.darkGray
        labelInfo.text = vehicules[indexPath.row].quiSuitJe()
        
    }
    //---------------------
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    //---------------------
    
    
    
    
    
    
}












