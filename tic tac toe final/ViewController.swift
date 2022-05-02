//
//  ViewController.swift
//  tic tac toe final
//
//  Created by Joey Sokan on 4/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor  = .cyan
    }

    @IBAction func histroyButton(_ sender: Any) {
  
        UIApplication.shared.open(URL(string: "https://aurosi.com/blog/the-history-of-tic-tac-toe-and-where-it-is-now/)")! as URL, options: [ : ], completionHandler: nil)
    
    }
    

}

