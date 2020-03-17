//
//  ActivityViewController.swift
//  CollectionOfTutorials
//
//  Created by Salma Hassan on 4/11/19.
//  Copyright © 2019 salma. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareImage))
    }
    

    @objc func shareImage(){
        let vc = UIActivityViewController(activityItems:[imageView.image!] , applicationActivities: [])
        present(vc, animated: true, completion: nil)
    }
}
