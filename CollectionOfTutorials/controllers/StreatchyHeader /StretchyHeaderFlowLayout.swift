//
//  StretchyHeaderFlowLayout.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/13/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit

class StretchyHeaderFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        layoutAttributes?.forEach({ (attributes) in
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                
                guard let collectionView = collectionView else { return }
                
                let contentOffsetY = collectionView.contentOffset.y
//                print(contentOffsetY)
                
                if contentOffsetY > 0 { return } // doesn't anything while scrolling to top
                
                let width = collectionView.frame.width
                let height = attributes.frame.height - contentOffsetY
                
                //header
                attributes.frame = CGRect(x: 0, y: contentOffsetY, width: width, height: height)
                
                print(attributes.frame)
            }
        })
        
        return layoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return false
    }

}
