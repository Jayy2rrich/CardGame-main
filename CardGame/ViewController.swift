//
//  ViewController.swift
//  CardGame
//
//  Created by Lisette Antigua on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var GameRule: UILabel!
    @IBOutlet weak var Higher: UIButton!
    @IBOutlet weak var Retry: UIButton!
    @IBOutlet weak var Lower: UIButton!
    @IBOutlet weak var Image: UIImageView!
    
    var current = 0
    var score  = 0
    var nextNum  = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        current = randomNum()
        Image.image = UIImage(named: "\(current)")
        Score.text = "Score: \(score)"
        GameRule.text = "Is this card higher or lower! \(current)"
        Retry.isHidden = true

        
    }
    
    
    @IBAction func gameOverButton(_ sender: Any) {
        //if
        
        current = randomNum()
        Image.image = UIImage(named: "\(current)")
        score = 0
        Score.text = "Score: \(score)"
        Lower.isHidden = true
        Higher.isHidden  = true
        GameRule.text = "Do you want to play again?"
        
    }
    
    @IBAction func lowerButton(_ sender: Any) {
        nextNum = randomNum()
        GameRule.text = "Is this card higher or lower! \(current)"
        if current < nextNum {
            score += 1
            Score.text = "Score: \(score)"
            current = nextNum

            
        } else {
            Score.text = "Score \(score)"
            score = 0
        }
        Image.image = UIImage(named: "\(current)")

    }
    @IBAction func highButton(_ sender: Any) {
        nextNum = randomNum()
        GameRule.text = "Is this card higher or lower! \(current)"
        if current > nextNum {
            score += 1
            Score.text = "Score: \(score)"
            current = nextNum
        }
        else {
            Score.text = "Score \(score)"
            score = 0
        }
        Image.image = UIImage(named: "\(current)")

    }
    
    func randomNum() -> Int
    {
        return Int.random(in: 1...13)
    }
    
}
