//
//  TarefasTableViewController.swift
//  Lista de Tarefas
//
//  Created by Ian Oliveira on 14/12/22.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    /*
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     return true
     }
     
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if (editingStyle == .delete) {
     let tarefa = TarefaUserDefault()
     tarefa.remover(indice: indexPath.row )
     atualizarListaTarefas()
     }
     }
     */
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let tarefa = TarefaUserDefault()
            tarefa.remover(indice: indexPath.row )
            atualizarListaTarefas()
        }
    }
    func atualizarListaTarefas(){
        let tarefa = TarefaUserDefault()
        tarefas = tarefa.listar()
        // recarregar a montagem da  tabela
        tableView.reloadData()
    }
    
    // recarregar tela
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celula.textLabel?.text = tarefas[ indexPath.row ]
        
        return celula
    }
    
    
    
}
