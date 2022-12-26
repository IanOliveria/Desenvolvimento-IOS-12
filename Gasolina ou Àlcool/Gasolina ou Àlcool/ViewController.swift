//
//  ViewController.swift
//  Gasolina ou Àlcool
//
//  Created by Ian Oliveira on 08/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var precoGsadsolinaCampo: UITextField!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if  let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGsadsolinaCampo.text  {
                
                let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
                
                if validaCampos {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }else {
                    resultadoLegenda.text="Digite os Preços para calcular!"
                    
                }
            }}
        
    
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        if let valorAlcool = Double(precoAlcool){
            if let valorGssolina = Double(precoGasolina){
                
                var resultado = valorAlcool/valorGssolina
                
                if resultado >= 0.7 {
                    resultadoLegenda.text="Melhor utilizar Gasolina"
                }else{
                    resultadoLegenda.text="Melhor utilizar Àlcool"
                }
            }
        }
        
    }
    
    
    func validarCampos (precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoGasolina.isEmpty || precoAlcool.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
    }
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

