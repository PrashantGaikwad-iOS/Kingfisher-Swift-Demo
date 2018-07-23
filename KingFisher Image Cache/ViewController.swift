//
//  ViewController.swift
//  KingFisher Image Cache
//
//  Created by Prashant G on 7/18/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var imagesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 198
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
        if indexPath.row < 99 {
            print(indexPath.row)
            cell.urlImageView.kf.setImage(with: URL(string:"https://randomuser.me/api/portraits/women/" + "\(indexPath.row)" + ".jpg")!,placeholder:UIImage(named: "loading"))
        }
        else if indexPath.row > 99{
            print(indexPath.row)
            cell.urlImageView.kf.setImage(with: URL(string:"https://randomuser.me/api/portraits/men/" + "\(indexPath.row - 99)" + ".jpg")!,placeholder:UIImage(named: "loading"))
        }
        return cell
    }
    
    
}
