//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Ian Oliveira on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func novaFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("Não se preocupe com o amanhã, pode fazer besteira! Já está tudo saindo errado mesmo! ")
        frases.append("Uma coisa é certa: sem luta não há derrota!")
        frases.append("Nunca tente aquilo que você sempre quis, a maior derrota é acreditar que é capaz.")
        frases.append("Deite-se e observe todo mundo ultrapassar você, a vista será linda!")
        frases.append("Já foi procrastinar hoje? O lado bom da vida é não fazer nada e esperar que o sucesso venha por osmose!")
        
        legendaResultado.text = frases[Int(arc4random_uniform(5))]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

