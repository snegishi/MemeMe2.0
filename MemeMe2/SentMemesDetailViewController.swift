//
//  SentMemesDetailViewController.swift
//
//
//  Created by Jason on 12/12/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - SentMemesDetailViewController: UIViewController

class SentMemesDetailViewController: UIViewController {
    
    // MARK: Properties
    
//    var villain: Villain!
    var meme: Meme!
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.label.text = "\(self.meme.topText)...\(self.meme.bottomText)"
  
        self.tabBarController?.tabBar.isHidden = true
        
        self.imageView!.image = self.meme!.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
