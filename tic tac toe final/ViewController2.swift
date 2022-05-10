//
//  2ViewController.swift
//  tic tac toe final
//
//  Created by Joey Sokan on 4/28/22.
//

import UIKit


//dont use this one


class ViewController2: UIViewController {
    enum Turn {
        case letterX
        case letterO
    }
    

   
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var top1: UIButton!
    @IBOutlet weak var top2: UIButton!
    @IBOutlet weak var top3: UIButton!
    @IBOutlet weak var mid1: UIButton!
    @IBOutlet weak var mid2: UIButton!
    @IBOutlet weak var mid3: UIButton!
    @IBOutlet weak var bot1: UIButton!
    @IBOutlet weak var bot2: UIButton!
    @IBOutlet weak var bot3: UIButton!
   
    var firstTurn = Turn.letterO
    var currentTurn = Turn.letterO
    var letterX = "O"
    var letterO = "X"
    var board = [UIButton]()
   
    override func viewDidLoad() {
    
        super.viewDidLoad()
        initBoard()
    }
    func initBoard(){
        board.append(top1)
        board.append(top2)
        board.append(top3)
        board.append(mid1)
        board.append(mid2)
        board.append(mid3)
        board.append(bot1)
        board.append(bot2)
        board.append(bot3)
    }
    @IBAction func boardTapAction(_ sender: Any) {
    
        addToBoard(sender as! UIButton)
    
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
            if(currentTurn == Turn.letterX)
            {
               sender.setTitle(letterX, for: .normal)
                currentTurn = Turn.letterO
                turnLabel.text = letterO
            }
            else if(currentTurn == Turn.letterO)
            {
                sender.setTitle(letterO, for: .normal)
                currentTurn = Turn.letterX
                turnLabel.text = letterX
            }
           
            sender.isEnabled = false
        
        }
        
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


