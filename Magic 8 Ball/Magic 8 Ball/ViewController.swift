//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kengo Tate on 2018/07/27.
//  Copyright © 2018年 humekuru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray=["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber = 0
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        newBallimage()
        
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallimage()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
   newBallimage()
    }
    func newBallimage(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

