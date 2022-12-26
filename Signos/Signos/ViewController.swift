//
//  ViewController.swift
//  Signos
//
//  Created by Ian Oliveira on 12/12/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricoronio", "Aquario","Peixes"]
    
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        significadoSignos.append("O ariano é uma pessoa cheia de energia e entusiasmio. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as ideias novas.")
        significadoSignos.append("Zeloso e possessivo, um cauro pode tender a ser inflexicel e ressentido. Aas vezes os touro pecam de sedr cobiçosos e de permitir-se tudo.")
        significadoSignos.append("2 - ..")
        significadoSignos.append("3 - ..")
        significadoSignos.append("4 - ..")
        significadoSignos.append("5 - ..")
        significadoSignos.append("6 - ..")
        significadoSignos.append("7 - ..")
        significadoSignos.append("8 - ..")
        significadoSignos.append("9 - ..")
        significadoSignos.append("10 - ..")
        significadoSignos.append("11 - ..")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso , for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row ]
        
        return celula
    }
    
    // metodo verificar o clique
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significados dos Signos", message: significadoSignos[ indexPath.row ], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "ok", style: .default)
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true)
        
    }


}

