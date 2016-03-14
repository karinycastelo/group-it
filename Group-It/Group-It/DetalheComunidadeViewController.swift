//
//  DetalheComunidadeViewController.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class DetalheComunidadeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewPostagem: UITableView!
    
    var postagens: [Postagem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postagens.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableViewPostagem.dequeueReusableCellWithIdentifier("postagemCell", forIndexPath: indexPath) as! PostagemTableViewCell
        
        let postagem = postagens[indexPath.row]
        
//        cell.imageProfile.image = UIImage(named: postagem.usuario.nomeImage)
//        cell.nameProfile.text = postagem.usuario.nome
        cell.datePostagem.text = "\(postagem.data) - \(postagem.hora)"
        cell.descricao.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "//postagem.descricao
        
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
