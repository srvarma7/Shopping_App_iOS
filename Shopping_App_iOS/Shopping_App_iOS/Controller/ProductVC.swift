//
//  ProductVC.swift
//  Shopping_App_iOS
//
//  Created by Sai Raghu Varma Kallepalli on 23/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private (set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let cellSize = CGSize(width:168 , height:280)

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        //layout.scrollDirection = .horizontal
        layout.itemSize = cellSize
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.minimumLineSpacing = 1.0
        layout.minimumInteritemSpacing = 1.0
        collectionView.setCollectionViewLayout(layout, animated: true)

        collectionView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    func initialiseProducts(category: Category) {
        products = DataService.instance.getProductByCategory(category: category.title)
        navigationItem.title = category.title
    }
    
    // MARK: - CollectionView methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? CustomCollectionViewCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        } else {
            return CustomCollectionViewCell()
        }
    }
    
}
