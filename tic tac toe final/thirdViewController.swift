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
    var board = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
    }
    func initBoard(){
        board.append(topOne)
        board.append(topTwo)
        board.append(topThree)
        board.append(middleOne)
        board.append(middleTwo)
        board.append(middleThree)
        board.append(bottomOne)
        board.append(bottomTwo)
        board.append(bottomThree)
    }

@IBAction func boardTapAction(_ sender: UIButton) {

    addToBoard(sender)
   
    if(fullBoard()){
        
    }
}
    func resultAlert(title: String){
        
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "New game", style: .default, handler: { (_) in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    func resetBoard()
    {
        for button in board{
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
   
    
    }
    func fullBoard() -> Bool {
        for button in board {
            if button.title(for: .normal) == nil{
                return false
            }
        }
    return true
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
            sender.isEnabled = false
        }
}
}
