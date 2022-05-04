//
//  thirdViewController.swift
//  tic tac toe final
//
//  Created by Logan Peterson on 5/4/22.
//

import UIKit

class thirdViewController: UIViewController {
  
    enum Turn {
    case Nought
    case Cross
    }
    
    

    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var topOne: UIButton!
    @IBOutlet weak var topTwo: UIButton!
    @IBOutlet weak var topThree: UIButton!
    @IBOutlet weak var middleOne: UIButton!
    @IBOutlet weak var middleTwo: UIButton!
    @IBOutlet weak var middleThree: UIButton!
    @IBOutlet weak var bottomOne: UIButton!
    @IBOutlet weak var bottomTwo: UIButton!
    @IBOutlet weak var bottomThree: UIButton!
    
    
    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    
    var NOUGHT = "O"
    var CROSS = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

@IBAction func boardTapAction(_ sender: UIButton) {

    addToBoard(sender)

}
    
    func addToBoard(_ sender: UIButton)
    {
        if(sender.title(for: .normal) == nil)
        {
            if(currentTurn == Turn.Nought)
            {
                sender.setTitle(NOUGHT, for: .normal)
                currentTurn = Turn.Cross
                turnLabel.text = CROSS
            }
            else if(currentTurn == Turn.Cross)
            {
                sender.setTitle(CROSS, for: .normal)
                currentTurn = Turn.Nought
                turnLabel.text = NOUGHT
            
        
        }
        }
}
}
