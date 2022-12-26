//
//  CadastroTarferaViewController.swift
//  Lista de Tarefas
//
//  Created by Ian Oliveira on 14/12/22.
//

import UIKit

class CadastroTarferaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefault()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
            let dados = tarefa.listar()
            print(dados)
            //navigationController?.popViewController(animated: true)
            
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
