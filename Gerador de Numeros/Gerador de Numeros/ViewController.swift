//
//  ViewController.swift
//  Gerador de Numeros
//
//  Created by Ian Oliveira on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        
        var numero = arc4random_uniform(11)
        legendaResultado.text = String(numero)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

