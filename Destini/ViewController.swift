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
    var storyIndex: Int = 1
    
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBackground()
        restart()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 && (storyIndex == 1 || storyIndex == 2) {
            storyTextView.text = stories.Story3
            topButton.setTitle(stories.​Answer3a, for: .normal)
            bottomButton.setTitle(stories.​Answer3b, for: .normal)
            storyIndex = 3
        }
        else if sender.tag == 2 && storyIndex == 1 {
            storyTextView.text = stories.Story2
            topButton.setTitle(stories.​Answer2a, for: .normal)
            bottomButton.setTitle(stories.​Answer2b, for: .normal)
            storyIndex = 2
        }
        else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = stories.Story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
        else if sender.tag == 1 && storyIndex == 3 {
            storyTextView.text = stories.Story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        }
        else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = stories.Story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        }
        
        if (storyIndex == 4 || storyIndex == 5 || storyIndex == 6) {
            restartButton.isHidden = false
        }
        
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        restart()
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
    
    func restart() {
        storyIndex = 1
        restartButton.isHidden = true
        storyTextView.text = stories.Story1
        topButton.setTitle(stories.​Answer1a, for: .normal)
        bottomButton.setTitle(stories.​Answer1b, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}

