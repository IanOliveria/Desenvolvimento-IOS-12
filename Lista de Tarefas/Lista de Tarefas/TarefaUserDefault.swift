//
//  TarefaUserDefault.swift
//  Lista de Tarefas
//
//  Created by Ian Oliveira on 14/12/22.
//

import UIKit

class TarefaUserDefault {
    
    let chave = "listaTsarefas"
    var tarefas: [String] = []
    
    func remover(indice: Int) {
        
        /*Recuperar tarefas já salvas*/
        tarefas = listar()
        
        tarefas.remove(at: indice )
        UserDefaults.standard.set( tarefas , forKey: chave)
        
    }
    
    func salvar(tarefa: String){
        
//        recuperar tarefas já salva
        tarefas = listar()
        
        //        salvar uma tarde
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
        
    }
    
    func listar() -> Array<String>  {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
        
        
    }
    
}
