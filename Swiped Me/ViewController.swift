//
//  ViewController.swift
//  Swiped Me
//
//  Created by Jennifer Joseph on 11/20/20.

//The three buttons “Dora”, “Boots”, and “Backpack” should all be in a single horizontal stack view, and when clicked, the button should put the name of the button into the label (e.g., click “Dora” and the label changes to “Dora”. Set the stack’s “Distribution” to “Fill Proportionately” and set spacing to 10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swipeLabel: UILabel!
    @IBOutlet weak var doraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func userSwiped(_ sender: UISwipeGestureRecognizer) {

    // When the user swipes (hold down and drag mouse in the simulator), the label should alternate between “Swiper, No Swiping!” and “Don’t Swipe Me!”

        let message1 = "Swiper, No Swiping!"
        let message2 = "Don't Swipe Me!"
        swipeLabel.text = swipeLabel.text == message1 ? message2 : message1
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        swipeLabel.text = sender.titleLabel?.text
    }
}

