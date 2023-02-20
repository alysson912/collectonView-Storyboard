//
//  ViewController.swift
//  collectionViewApp
//
//  Created by ALYSSON DODO on 20/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = ["car1","car2","car3","car4","car5","car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }


    private func configCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        // definir layout horizontal
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero // -> desativa funcao de se auto adequar as telas
        }
        // registrar cell
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(nameImage: data[indexPath.row])
        
        return cell ??  UICollectionViewCell()
    }
    // metodo para setar o hide
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
}
