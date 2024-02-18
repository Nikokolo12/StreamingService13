//
//  MainHeaderView.swift
//  FreeBookService
//
//  Created by User on 17.09.2023.
//

import UIKit

class MainHeaderView: UIView {
    
    private let mainHeaderImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit //A flag used to determine how a view lays out its content when its bounds change.
        imageView.clipsToBounds = true //hether subviews are confined to the bounds of the view.(or cut out)
        imageView.image = UIImage(named: "Will_Smith")
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(mainHeaderImage)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainHeaderImage.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
