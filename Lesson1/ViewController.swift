//
//  ViewController.swift
//  Lesson1
//
//  Created by BLVCK on 07.07.17.
//  Copyright © 2017 blvvvck production. All rights reserved.
//

import UIKit

var loginNameKey: String = "UserLoginName"



class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserDefaults.standard.object(forKey: loginNameKey) != nil{
            performSegue(withIdentifier: "join", sender: nil)
        }
        
    }


    @IBAction func ClickedOnLogin(_ loginButton: UIButton) {
        let isOk = checkFields()
        
        if isOk == true {
            
            UserDefaults.standard.set(loginTF.text, forKey: loginNameKey)
            
            UserDefaults.standard.synchronize()
            
            performSegue(withIdentifier: "join", sender: nil)
            loginButton.setTitle("Ok", for: .normal)
        }
        else {
            loginButton.setTitle("Error ", for: .normal)
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "join" {
            let destination = segue.destination as! UITabBarController
            
            guard let vc1 = destination.viewControllers?[0] as? AboutOurViewController else { return }
            
            vc1.textForTextLabel = loginTF.text!
        }
    }


    

    func checkFields() -> Bool{
        var isFieldsCorrect = false
        
        if loginTF.text == "Rinat" && passwordTF.text == "qwerty" {
            isFieldsCorrect = true
        }
        
        return isFieldsCorrect
    }

    
}

