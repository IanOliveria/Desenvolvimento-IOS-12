//
//  ViewController.swift
//  idadeDeCachorro
//
//  Created by Ian Oliveira on 06/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
      let idade = Int (campoIdadeCachorro.text!)! * 7
    legendaResultado.text! = "A idade do cachorro em anos Humanos é: " + String(idade);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

 
