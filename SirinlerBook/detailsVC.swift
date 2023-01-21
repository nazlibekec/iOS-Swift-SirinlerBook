//
//  detailsVC.swift
//  SirinlerBook
//
//  Created by Nazlı on 18.01.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSirin : sirin?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSirin?.name
        jobLabel.text = selectedSirin?.job
        imageView.image = selectedSirin?.image
        
    }
    
}
