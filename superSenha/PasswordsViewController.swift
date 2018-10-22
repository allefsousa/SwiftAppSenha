//
//  PasswordsViewController.swift
//  superSenha
//
//  Created by José Guilherme Scanavini on 21/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    var numberOfCharacteres: Int = 10
    var numberOfPasswords : Int = 1
    var useNumbers : Bool!
    var useLetters: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacteres: Bool!
    var pas:PasswordGenerated!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        pas = PasswordGenerated(numberOfCharactere: numberOfCharacteres, useLetters: useLetters, useNumbers: useNumbers, userCapitalLetters: useCapitalLetters, useSpecialCharactere: useSpecialCharacteres)
        generatePasswords()
        
        
        

    }
    
    func generatePasswords(){
        tvPasswords.scrollRangeToVisible(NSRange(location:0,length:0)) // mostrando o inicio do text view
        tvPasswords.text = ""
        
        let password = pas.generated(total: numberOfPasswords)
        for passwor in password{
            tvPasswords.text.append(passwor + "\n\n")
        }
    }

    @IBAction func generated(_ sender: UIButton) {
       
        generatePasswords()
    }
}
