//
//  CustomCollectionViewCell.swift
//  collectionViewApp
//
//  Created by ALYSSON DODO on 20/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var carImageView: UIImageView!
    
    
    // criar identififer
    static  let identifier = "CustomCollectionViewCell"
    //criar nib
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

     func setupCell(nameImage: String){
        carImageView.image = UIImage(named: nameImage)
         carImageView.contentMode = .scaleAspectFill
    }
}
