//
//  SecondViewController.swift
//  Simpson Book
//
//  Created by Sadia on 1/4/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
   var narutoClass: NarutoClass? // Object type declare
    
    override func viewDidLoad() {
        super.viewDidLoad()
//       narutoClass = NarutoClass(name: <#T##String#>, job: <#T##String#>, image: <#T##UIImage#>) // Object initializaed
        
        imageView.image = narutoClass?.image
        nameLabel.text = narutoClass?.name
        jobLabel.text = narutoClass?.job
       
    }
}
