//
//  ViewController.swift
//  Dicee
//
//  Created by Bruno  on 24/05/24.
//

import UIKit

class ViewController: UIViewController {

    // Referencias a elementos de la UI
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // Este metodo se lanza al iniciar la app
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.alpha = 0.5
    }

    // Funcion que cambia las propiedades por medio de un
    // ItemBuilderAction (accion del usuario - boton)
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.alpha = 1
        diceImageViewTwo.alpha = 1
        
        let diceArray = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")]
                
        diceImageViewOne.image = diceArray.randomElement()
        diceImageViewTwo.image = diceArray.randomElement()
        
    }
    
}
