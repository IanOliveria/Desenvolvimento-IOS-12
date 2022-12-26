//
//  ViewController.swift
//  Cara ou Coroa
//
//  Created by Ian Oliveira on 10/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            let vcResultado = segue.destination as! ResultadoViewController
            vcResultado.numeroRandomico = Int(arc4random_uniform(2))
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

