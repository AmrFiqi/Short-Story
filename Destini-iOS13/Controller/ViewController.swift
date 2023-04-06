//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    // MARK: - Model Object
    
    let storyBrain = StoryBrain()
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyBrain.updateStoryText()
        choice1Button.setTitle(storyBrain.updateButton1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.updateButton2Text(), for: .normal)
    }
}

