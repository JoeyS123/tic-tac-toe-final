//
//  flashViewController.swift
//  tic tac toe final
//
//  Created by Logan Peterson on 5/24/22.
//

import UIKit

class flashViewController: UIViewController {
   
    @IBOutlet weak var coolButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mySwitch(_ sender: Any) {
      
        if coolButton.isOn{
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
       
    }
    

}
}
