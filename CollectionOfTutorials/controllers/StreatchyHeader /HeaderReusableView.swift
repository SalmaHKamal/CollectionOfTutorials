//
//  HeaderReusableView.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/13/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit

class HeaderReusableView: UICollectionReusableView {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
