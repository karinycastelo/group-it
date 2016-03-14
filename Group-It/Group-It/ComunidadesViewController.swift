//
//  ComunidadesViewController.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class ComunidadesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var comunidadeTableView: UITableView!
    
    var comunidades: [Comunidade] = [Comunidade(nome: "Teste", nomeLogo: "", tipo: "Skate", numMembro: 4), Comunidade(nome: "Teste2", nomeLogo: "Academia", tipo: "", numMembro: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comunidades.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = comunidadeTableView.dequeueReusableCellWithIdentifier("comunidadeCell", forIndexPath: indexPath) as! ComunidadeTableViewCell
        
        let comunidade = comunidades[indexPath.row]
        
        cell.nomeComunidade.text = comunidade.nome
        cell.imageComunidade.image = UIImage(named: comunidade.nomeLogo)
        cell.tipo.text = comunidade.tipo
        cell.quantidadeMembros.text = String(comunidade.numMembro) + " membros"
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
