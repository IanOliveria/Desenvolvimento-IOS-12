//
//  ViewController.swift
//  Chuck Norries Simples
//
//  Created by Ian Oliveira on 17/12/22.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var fraseTextView: UITextView!
    @IBAction func gerarFrase(_ sender: Any) {
        recuperarMenssagemChuck()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        recuperarMenssagemChuck()
    }
    
    func recuperarMenssagemChuck(){
        
       
        if let url = URL(string: "https://api.chucknorris.io/jokes/random"){
            let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                if erro == nil {
                        
                    if let dadosRetonro = dados {
                        
                        print("entrei")
                        print(dadosRetonro)
                        
                        do{
                            if let objetoJson = try JSONSerialization.jsonObject(with: dadosRetonro, options: []) as? [String: Any ]{
                                print("entrei 2")
                                print(objetoJson["value"])
                                if let categoria = objetoJson["value"] as? String { //print("entrei3")
                                    
                                    print(categoria)

                                        
                                        DispatchQueue.main.async(execute: {
                                             
                                            self.fraseTextView.text = categoria
//                                            print(textoRecuperado)
                                            
                                            
                                            
                                           
                                        })
                                        
                                        

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

