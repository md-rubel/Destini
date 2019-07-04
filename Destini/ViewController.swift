//
//  ViewController.swift
//  Destini
//
//  Created by MD RUBEL on 4/7/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    var stories = Story()
    
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBackground()
        
        storyTextView.text = stories.Story1
        topButton.setTitle(stories.​Answer1a, for: .normal)
        bottomButton.setTitle(stories.​Answer1b, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
    }
    
    //    MARK: Set Background Image
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImageView)
        
    }
}

