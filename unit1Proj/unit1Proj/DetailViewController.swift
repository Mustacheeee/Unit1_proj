//
//  DetailViewController.swift
//  unit1Proj
//
//  Created by 趙藝鑫 on 1/26/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var info: String?
    @IBOutlet weak var describtions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        describtions.text = info
        // Do any additional setup after loading the view.
    }
    

    	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
