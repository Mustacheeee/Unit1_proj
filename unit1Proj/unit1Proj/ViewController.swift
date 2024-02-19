//
//  ViewController.swift
//  unit1Proj
//
//  Created by 趙藝鑫 on 1/26/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backstoryButton: UIButton!
    
    @IBOutlet weak var neighbothoodButton: UIButton!
    
    @IBOutlet weak var jobButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DetailViewController
        destVC.info = sender as? String
    }
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            if tappedView == backstoryButton {
                let info = "SpongeBob is a childish, joyful, and clumsy sea sponge who lives in a pineapple with his pet snail Gary in the underwater city of Bikini Bottom."
                performSegue(withIdentifier: "detailSegue", sender: info)
                print("backstory button tapped!")
            } else if tappedView == neighbothoodButton {
                let info = "SpongeBob lives in a neighborhood with two neighbors: Squidward Tentacles and Patrick Star"
                performSegue(withIdentifier: "detailSegue", sender: info)
                print("neighbor hood button tapped!")
            } else if tappedView == jobButton {
                let info = "SpongeBob works as a fry cook at the Krusty Krab, a job in which he is exceptionally skilled at and enjoys thoroughly. He enjoys his job more than any other activity and is saddened whenever he cannot be at work."
                performSegue(withIdentifier: "detailSegue", sender: info)
                print("job button tapped!")
            }
            
        }
    }
    
}

