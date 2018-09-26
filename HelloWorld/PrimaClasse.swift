//
//  PrimaClasse.swift
//  HelloWorld
//
//  Created by stefano vecchiati on 24/09/2018.
//  Copyright © 2018 co.eggon. All rights reserved.
//

import UIKit

enum ProvaEnum : String {
    case pippo = "pippo"
    case topolino = "topolino"
    
    static let all = [ProvaEnum.pippo, ProvaEnum.topolino]
}

class PrimaClasse: NSObject {
    
    var primo : Int!
    var secondo : Int!
    var arrayString : [String] = ["pippo", "pluto", "topolino"]
    
    override init() {
        super.init()
        
        arrayString.append("minni")
        arrayString.insert("paperino", at: 1)
//        arrayString.remove(at: 4)
        
        for nome in arrayString {
            debugPrint(nome)
        }
        
        for (index, nome) in arrayString.enumerated() {
            debugPrint(nome, index)
        }
        
        for i in 0..<arrayString.count/2 {
            debugPrint(arrayString[i])
        }
        
        debugPrint(ProvaEnum.pippo.rawValue)
        
        for value in ProvaEnum.all {
            debugPrint(value.rawValue)
        }
        
        
    }
    
    init(primo: Int, secondo: Int?, terzo : Int = 0) {
        super.init()
//        self.secondo = primo == 1 ? 0 : 1
        self.primo = primo
        self.secondo = secondo ?? 0
    }
    
    func sum(primo : Int, withSecondo secondo: Int) -> Int {
        return primo + secondo
    }

}
