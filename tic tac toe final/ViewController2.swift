//
//  2ViewController.swift
//  tic tac toe final
//
//  Created by Joey Sokan on 4/28/22.
//

import UIKit

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func boardTapAction(_ sender: Any) {
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


