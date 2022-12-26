//
//  ViewController.swift
//  preco do biticoin
//
//  Created by Ian Oliveira on 17/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valorBiticoin: UILabel!
    
    @IBOutlet weak var botaoAtualizar: UIButton!
    @IBAction func atualizar(_ sender: Any) {
        self.recuperarPrecoBiticoin()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.recuperarPrecoBiticoin()

      
    }
    
    func formatarPreco(preco: NSNumber) -> String{
     
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.locale = Locale(identifier:  "pt_BR")
        
        if let precoFinal = nf.string(from: preco){
            return precoFinal
        }
        
        return "0,00"
    }
    
    
    
    func recuperarPrecoBiticoin(){
        
        self.botaoAtualizar.setTitle("Atualizando...", for: .normal)
        if let url = URL(string: "https://blockchain.info/ticker"){
            let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                if erro == nil {
                        
                    if let dadosRetonro = dados {
                        
                        
                        
                        do{
                            if let objetoJson = try JSONSerialization.jsonObject(with: dadosRetonro, options: []) as? [String: Any ]{
                                print(objetoJson)
                                if let brl = objetoJson["BRL"] as? [String: Any] {
                                    if let preco = brl["buy"] as? Double{
                                        let precoFormatado = self.formatarPreco(preco: NSNumber(value: preco))
                                        
                                        DispatchQueue.main.async(execute: {
                                            
                                            self.valorBiticoin.text = "R$ "+precoFormatado
                                            self.botaoAtualizar.setTitle("Atualizar", for: .normal)
                                        })
                                        
                                        
                                    }
                                }
                                
                            }
                            
                            
                        }catch{
                            print("erro ao formator o retorno")
                        }
                        
                    }
                    
                }else{
                    print("Erro ao fazer a consulta do preço.")
                }
            }
            tarefa.resume()
        }
    }


}

