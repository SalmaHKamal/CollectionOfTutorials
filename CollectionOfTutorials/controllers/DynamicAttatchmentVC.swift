//
//  DynamicAttatchmentVC.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/11/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit

class DynamicAttatchmentVC: UIViewController {
    
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    var anchorPoint: CGPoint!
    var attachment: UIAttachmentBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1
        anchorPoint = smallView.center
        
        // 2
        attachment = UIAttachmentBehavior(item: blueView, attachedToAnchor: anchorPoint)
        attachment.length = 100
        attachment.frequency = 10
        attachment.damping = 5
        
        // 3
        animator = UIDynamicAnimator(referenceView: view)
        animator.addBehavior(attachment)
        
        // 4
        gravity = UIGravityBehavior(items: [blueView])
        animator.addBehavior(gravity)
    }
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        attachment.anchorPoint = sender.location(in: view)
        smallView.center = sender.location(in: view)
    }
    

}
