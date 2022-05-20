//
//  fifthViewController.swift
//  tic tac toe final
//
//  Created by johnny gatta on 5/16/22.
//

import UIKit

class fifthViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
   
    var randomfact = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func funfact(_ sender: Any) {
    
        randomfact = Int(arc4random_uniform(6))
            print(randomfact)
        if randomfact == 0 {
            label.text = "Tic tac toe dates all the way back to 1300B"
        }
        if randomfact == 1 {
            label.text = "There are 362,800 distinct ways to place the X's and O's"
        }
        if randomfact == 2 {
            label.text = "It was the worlds first video game"
        }
        if randomfact == 3 {
            label.text = "The game was not named Tic tac toe until the 20th century"
        }
        if randomfact == 4 {
            label.text = "There are only 138 winning combinations"
        }
        if randomfact == 5 {
            label.text = "26,830 diffrent game board possible"
        }
        if randomfact == 6 {
            label.text = "only 3 ways can cause a tie"
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
}
