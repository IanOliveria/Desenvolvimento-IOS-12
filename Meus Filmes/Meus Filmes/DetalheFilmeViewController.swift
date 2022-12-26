//
//  DetalheFilmeViewController.swift
//  Meus Filmes
//
//  Created by Ian Oliveira on 13/12/22.
//

import UIKit

class DetalheFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeIV: UIImageView!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeIV.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
    }
}
