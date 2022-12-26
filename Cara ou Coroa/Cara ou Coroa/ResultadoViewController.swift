//
//  ResultadoViewController.swift
//  Cara ou Coroa
//
//  Created by Ian Oliveira on 10/12/22.
//

import UIKit

class ResultadoViewController: UIViewController {

    
    @IBOutlet weak var resultadoIV: UIImageView!
    
    @IBAction func jogarNovamente(_ sender: Any) {
        
        
        
        
        let resJogar: Int = Int(arc4random_uniform(2))
        print("entrei " + String(resJogar))
        self.jogarDeNovo(jogar: resJogar)
//        if numeroRandomico == 0 {
//
//            resultadoIV.image = UIImage(named:"moeda_cara")
//
//        }else{
//
//            resultadoIV.image = UIImage(named:"moeda_coroa")
//
//        }
    }
    
    var numeroRandomico: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.jogarDeNovo(jogar: numeroRandomico)
        print("entrei " + String(numeroRandomico))
        //        if numeroRandomico == 0 {
//
//            resultadoIV.image = UIImage(named:"moeda_cara")
//
//        }else{
//
//            resultadoIV.image = UIImage(named:"moeda_coroa")
//
//        }

    }
    
    func jogarDeNovo(jogar: Int){
        let jogue = jogar
        if jogue == 0 {
            
            resultadoIV.image = UIImage(named:"moeda_cara")
            
        }else{
            
            resultadoIV.image = UIImage(named:"moeda_coroa")
            
        }
        
    }
        
    }
    
   


