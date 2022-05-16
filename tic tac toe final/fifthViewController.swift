//
//  fifthViewController.swift
//  tic tac toe final
//
//  Created by johnny gatta on 5/16/22.
//

import UIKit

class fifthViewController: UIViewController {
    @IBOutlet weak var labal: UILabel!
    var randomfact = 0
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    @IBAction func funfact(_ sender: Any) {
    
        randomfact = Int(arc4random_uniform(4))
            print(randomfact)
        if randomfact == 0 {
            labal.text = "Tic tac toe dates  all the way back to 1300B"
        }
        if randomfact == 1 {
            labal.text = "There are 362,800 distinct ways to place the X's and O's"
        }
        if randomfact == 2 {
            labal.text = "It had become the worlds first video game"
        }
        if randomfact == 3 {
            labal.text = "The game was not named Tic tac toe until the 20th century"
        }
        if randomfact == 4 {
            labal.text = "There are only 138 winning combinations"
        }
    
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
