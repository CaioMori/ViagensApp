//
//  HomeTableViewHeader.swift
//  ViagensApp
//
//  Created by Caio Mori on 24/11/24.
//

import UIKit

class HomeTableViewHeader: UIView {
    
    // MARK - IBOoutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var bannerView: UIView!
    
    func configure(with title: String) {
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 10
    }
    
}
