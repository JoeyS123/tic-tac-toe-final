//
//  thirdViewController.swift
//  tic tac toe final
//
//  Created by Logan Peterson on 5/4/22.
//

import UIKit
import AVFoundation
class thirdViewController: UIViewController {
  
    var audioPlayer: AVAudioPlayer?
    var randomNumber : Int = 0
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
    var noughtScore = 0
    var crossesScore = 0
    
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
    
    randomNumber = Int(arc4random_uniform(6))
        print(randomNumber)
    if randomNumber == 0 {
        view.backgroundColor = .gray
    }
    if randomNumber == 1 {
        view.backgroundColor = .red
    }
    if randomNumber == 2 {
        view.backgroundColor = .orange
    }
    if randomNumber == 3 {
        view.backgroundColor = .yellow
    }
    if randomNumber == 4 {
        view.backgroundColor = .green
    }
    if randomNumber == 5 {
        view.backgroundColor = .blue
    }
    if randomNumber == 6 {
        view.backgroundColor = .purple
    }
    }
    @IBAction func boardTapAction(_ sender: UIButton) {

    addToBoard(sender)
   
    if checkForVictory(CROSS){
        crossesScore += 1
        resultAlert(title: "Player X wins")
    }
    if checkForVictory(NOUGHT){
        noughtScore += 1
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
        //
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
      
    //should be let message = but doesnt work
       
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .alert)
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
    func addToBoard(_ sender: UIButton) {
        
        
        
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
        
        
        
    //    func playSound(sound:String, type: String) {
   //         if let path = Bundle.main.path(forResource: sound, ofType: type){
    //            do {
   //     audioPlayer = try AVAudioPlayer(contentsOf: URL (fileURLWithPath: path))
     //               audioPlayer?.play()
     //           } catch {
     //               print("ERROR: Could not find and play the sound file!")
                    
//  }
//}
//}
    }
    @IBAction func buttonPress(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }
    
    @IBAction func t1Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }
    @IBAction func t2Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }
    @IBAction func t3Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }
    
    @IBAction func M1Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }

    @IBAction func m2Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }

    @IBAction func M3Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }

    @IBAction func B1Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }

    @IBAction func B2Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }

    @IBAction func b3Sound(_ sender: Any) {
        let pathToSound = Bundle.main.path(forResource: "batman_music_sfx", ofType: "wav")!
        let url = URL(fileURLWithPath: pathToSound)
        
        do{
            audioPlayer  = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
    catch
        {
  print(error)
    }
    }
}
    

    



