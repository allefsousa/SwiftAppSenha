//
//  PasswordGenerated.swift
//  superSenha
//
//  Created by José Guilherme Scanavini on 21/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import Foundation

class PasswordGenerated{
    
    var numberOfCharactere: Int
    var useLetters: Bool
    var useNumbers:Bool
    var userCapitalLetters:Bool
    var useSpecialCharactere:Bool
    
    var password:[String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacteres = "!@#$%^&*()_-+-=[]{};:.,?><'"
    private let numbers = "0123456789"
    
    init( numberOfCharactere: Int,
     useLetters: Bool,
     useNumbers:Bool,
     userCapitalLetters:Bool,
     useSpecialCharactere:Bool) {
        
        //valindando tamanho do input
        var numchars = min(numberOfCharactere,16)
        numchars = max(numchars, 1)
        
        
        self.useLetters = useLetters
        self.useSpecialCharactere = useSpecialCharactere
        self.useNumbers = useNumbers
        self.userCapitalLetters = userCapitalLetters
        self.numberOfCharactere = numchars
        
        
    }
    
    func generated(total:Int)-> [String]{
        password.removeAll()
        var universe: String = ""
        
        if useLetters{
            universe += letters
        }
        if useSpecialCharactere{
            universe += specialCharacteres
        }
        if useNumbers {
            universe += numbers
        }
        if userCapitalLetters {
            universe += letters.uppercased()
        }
        
        var universeArray : [String] = [universe]
        while password.count < total{
            var passwords = ""
            for _ in 1...numberOfCharactere{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                passwords += String(universeArray[index])
            }
            
            password.append(passwords)
        }
        
        universeArray.removeAll()
        return password
        
    }
    
    
    
}
