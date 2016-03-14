//
//  PerfilViewController.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 12/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var perfilImage: UIImageView!
    @IBOutlet weak var perfilNome: UILabel!
    @IBOutlet weak var perfilInfo: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let atividades: [String] = ["Skate", "CrossFit", "Basquete"]
    
    var side: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        side = (collectionView.frame.width - 20)/3
    }

    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return atividades.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("atividadesCell", forIndexPath: indexPath) as! PerfilFavoritoCollectionViewCell
        
        cell.atividadeIcon.image = UIImage(named: atividades[indexPath.item])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        return collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "footerView", forIndexPath: indexPath) as! PerfilFavoritoFooterCollectionReusableView
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: side, height: side)
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
