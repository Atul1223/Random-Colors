//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class ColorsTableVC: UIViewController  {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    //how many number of rows needs to be showed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    //what to shows in those rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailedVC", sender: nil)
    }
}
