//
//  ViewController.swift
//  Destini
//
//  Created by Beste on 16.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = storyBrain.storyArray[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.storyArray[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyArray[storyBrain.storyNumber].choice2, for: .normal)
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let next = storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        storyLabel.text = next.title
        choice1Button.setTitle(next.choice1, for: .normal)
        choice2Button.setTitle(next.choice2, for: .normal)
        
    }


}

