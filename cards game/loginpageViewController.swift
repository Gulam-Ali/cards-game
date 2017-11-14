//
//  loginpageViewController.swift
//  cards game
//
//  Created by gulam ali on 19/09/17.
//  Copyright © 2017 gulam ali. All rights reserved.
//

import UIKit

class loginpageViewController: UIViewController {
    
    
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func logintapped(_ sender: Any) {
        
        
        if username.text == "" && password.text == ""  {
            
            
            let alert = UIAlertController(title: "Alert", message: "enter password and usrname", preferredStyle: UIAlertControllerStyle.alert)
            
            
            
            
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
            
            
            
        else if username.text == "" {
            
            let alert = UIAlertController(title: "Alert", message: "enter username", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
            
            
        else if password.text == "" {
            
            
            let alert = UIAlertController(title: "Alert", message: "enter password", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
            
            
            
        else{
            
            
            
            
            
            
            let move:ViewController = self.storyboard! .instantiateViewController(withIdentifier:"mainpage") as! ViewController // mannualy navigation code
            
            UserDefaults.standard.set(username.text, forKey: "usernamevalue")
            UserDefaults.standard.set(password.text, forKey: "passwordnamevalue")
            UserDefaults.standard.synchronize()
            
            
            self.navigationController?.pushViewController(move, animated: true)// mannualy navigation code both the lines
            
            
            
            
           
            
        }
        

        
        
        
    }

    override func viewDidLoad() {
        
       // UserDefaults.standard.set("\(username.text!)", forKey: "userName")
      //  UserDefaults.standard.set("\(password.text!)", forKey: "password")
        
      //  UserDefaults.standard.synchronize()

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
