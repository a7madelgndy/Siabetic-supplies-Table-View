//
//  ProductTableViewCell.swift
//  Table View Practices (Diabetic Supplies)
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet var productPriceLbl: UILabel!
    @IBOutlet var protuctNameLbl: UILabel!
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var FavoriteButtonImage: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        if  FavoriteButtonImage.imageView?.image  == UIImage(named: "NotFavorite.png") {
            FavoriteButtonImage.imageView?.image = UIImage(named: "Favorite.png")
        } else if FavoriteButtonImage.imageView?.image  == UIImage(named: "Favorite.png") {
            FavoriteButtonImage.imageView?.image = UIImage(named: "NotFavorite.png")
        }
    }
}
extension ProductTableViewCell {
    private func configureUI() {
        productImage.layer.cornerRadius = 15
    }
    func configure(with product:Product){
        
        productPriceLbl.text = product.pirce
        productImage.image =  product.Image
        protuctNameLbl.text = product.title
    }
}
