//
//  fourthViewController.swift
//  tic tac toe final
//
//  Created by Logan Peterson on 5/12/22.
//

import SwiftUI

class fourthViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        enum SquareStatus {
            case empty
            case home
            case visitor
        }
        class Sqaure : ObservableObject {
            @Published var squareStatus : SquareStatus
            
            init(status : SquareStatus) {
                self.squareStatus = status
            }
        }
        class TicTacToeModel : ObservableObject {
            @Published var squares = [Sqaure]()
            init() {
                for _ in 0...8{
                    squares.append(Sqaure(status:.empty))
                }
            }
            
        }
        struct SquareView : View {
            var body: some View {
                Button(action: {
                    
                }, label: {
                    Text("Button")
                })
                
            }
        }
        struct ContentView: View {
            @StateObject var ticTacToeModel = TicTacToeModel()
            var body: some View {
                ForEach(0 ..<  ticTacToeModel.squares.count / 3, content: {
                    row in
                    HStack {
                        ForEach(0 ..< 3, content: {
                            column in
                            Color.gray.frame(width: 70, height: 70, alignment: .center)
                        })
                    }
                })
            }
            
            
        }
        
        struct ContentView_Previews:PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
    }
    

    

}


