//
//  ViewController.swift
//  superSenha
//
//  Created by José Guilherme Scanavini on 20/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swSpecialCharacteres: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var tfNumberOfCharacteres: UITextField!
    @IBOutlet weak var tfTotalPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // enviando dados para a proxima tela
    // metodo é chamado antes de iniciar a nova tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // variave referente a proxima tela
        let passwordsViewControler = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPassword.text!){ // recuperando os dados informados pelo usuario de uma forma
                passwordsViewControler.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacteres = Int(tfNumberOfCharacteres.text!){ // recuperando os dados informados pelo usuario de uma forma segura do campo de texto
            passwordsViewControler.numberOfCharacteres = numberOfCharacteres
        }
        passwordsViewControler.useLetters = swLetters.isOn
        passwordsViewControler.useCapitalLetters  = swCapitalLetters.isOn
        passwordsViewControler.useSpecialCharacteres = swSpecialCharacteres.isOn
        passwordsViewControler.useNumbers = swNumbers.isOn
        view.endEditing(true) // fechando o teclado
        
        
        
    }

  


}

