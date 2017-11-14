//
//  ViewController.swift
//  cards game
//
//  Created by gulam ali on 03/09/17.
//  Copyright © 2017 gulam ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftimage: UIImageView!
    
    @IBOutlet weak var rightimage: UIImageView!
    
    @IBOutlet weak var leftscore: UILabel!
    
    @IBOutlet weak var rightscore: UILabel!
    
    var cpuscore = 0
    var playerscore = 0
        
    
    
    
    
    let cardnames = ["card2","card3","card4","card5","card6","card7","card8","card9","jack","queen","king","ace"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
    
    @IBAction func dealtapped(_ sender: Any) {
        
        let leftcard = Int(arc4random_uniform(12))// func used for randomizing purpose
        
        let rightcard = Int(arc4random_uniform(12))
        
        leftimage.image = UIImage(named: cardnames[leftcard])
        rightimage.image = UIImage(named: cardnames[rightcard])
        
        if leftcard > rightcard {
            
       playerscore += 1
            leftscore.text = String(playerscore)
        }
        else if leftcard == rightcard {
            
            let alert = UIAlertController(title: "Alert", message: "cards are similar hit deal again !!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else  {
            
            cpuscore += 1
            rightscore.text = String(cpuscore)
        }
        

        
        
        
        if      cpuscore ==  5   {
            
            
            
            
            
            let alert = UIAlertController(title: "Alert", message: "CPU won !!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
            //rightscore.text = String(0)
           // leftscore.text = String(0)
                    }
        
            
        
        else if  playerscore == 5 {
            
            let alert = UIAlertController(title: "Alert", message: "You Win !!", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            //rightscore.text = String(0)
          //  leftscore.text = String(0)
            
            
        }
        
        
        else{
            
            
            
            
        }
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

