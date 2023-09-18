//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class ColorsTableVC: UIViewController  {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segue {
        static let toDeatiledColorVC =  "ToColorsDetailedVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.randomColor())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailedVC
        destVC.color = sender as? UIColor
    }
}


extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    //how many number of rows needs to be showed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    //what to shows in those rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //unwrap the optional using 'guard': In case 'ColorCell' identifier is not there
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell)
        else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.toDeatiledColorVC, sender: color)
    }
}
