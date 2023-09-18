//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class ColorsTableVC: UIViewController  {
    
    var colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailedVC", sender: color)
    }
}
