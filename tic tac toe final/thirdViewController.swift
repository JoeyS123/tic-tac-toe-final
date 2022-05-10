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

    @IBAction func randomcolor(_ sender: Any) {
    
    
    
    }
    @IBAction func boardTapAction(_ sender: UIButton) {

    addToBoard(sender)
   
    if checkForVictory(CROSS){
        resultAlert(title: "Player X wins")
    }
    if checkForVictory(NOUGHT){
        resultAlert(title: "Player O wins")
    }
    
    if(fullBoard())
    {
     resultAlert(title: "draw")
    }
}
    func checkForVictory(_ s :String) -> Bool {
        
        //  checking for the across wins
        if thisSymbol(topOne, s) && thisSymbol(topTwo, s)  && thisSymbol(topThree, s) {
            return true
        }
        if thisSymbol(middleOne, s) && thisSymbol(middleTwo, s)  && thisSymbol(middleThree, s) {
            return true
        }
        if thisSymbol(bottomOne, s) && thisSymbol(bottomTwo, s)  && thisSymbol(bottomThree, s) {
            return true
        }
        // checking for up and down wins
        if thisSymbol(topOne, s) && thisSymbol(middleOne, s)  && thisSymbol(bottomOne, s) {
            return true
        }
        if thisSymbol(topTwo, s) && thisSymbol(middleTwo, s)  && thisSymbol(bottomTwo, s) {
            return true
        }
        if thisSymbol(topThree, s) && thisSymbol(middleThree, s)  && thisSymbol(bottomThree, s) {
            return true
        }
      // diagonal
        if thisSymbol(topOne, s) && thisSymbol(middleTwo, s)  && thisSymbol(bottomThree, s) {
            return true
        }
        if thisSymbol(topThree, s) && thisSymbol(middleTwo, s)  && thisSymbol(bottomOne, s) {
            return true
        }
        
        
       
        
        return false
    }
    func thisSymbol(_ button: UIButton, _ symbol: String) -> Bool {
        return button.title(for: .normal) == symbol
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
        if firstTurn == Turn.Nought {
            firstTurn = Turn.Cross
            turnLabel.text = CROSS
        }
       else if firstTurn == Turn.Cross {
            firstTurn = Turn.Nought
            turnLabel.text = NOUGHT
       }
    currentTurn = firstTurn
    }
    func fullBoard() -> Bool {
        for button in board {
            if button.title(for: .normal) == nil {
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

