//
//  ColorsDetailedVC.swift
//  RandomColors
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class ColorsDetailedVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.blue
    }
    
}
