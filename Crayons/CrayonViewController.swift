//
//  ViewController.swift
//  Crayons
//
//  Created by Ashli Rankin on 12/3/18.
//  Copyright © 2018 Ashli Rankin. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
   
    
    @IBOutlet weak var crayonTableView: UITableView!
    
    private var crayons = Crayon.allTheCrayons
    override func viewDidLoad() {
        super.viewDidLoad()
       crayonTableView.dataSource = self
    }


}
extension CrayonViewController: UITableViewDelegate{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      guard  let indexPath = crayonTableView.indexPathForSelectedRow,
      let destination = segue.destination as? DetaliedViewController else {fatalError("no destination found")}
        let crayon = crayons[indexPath.row]
        destination.crayonName.text = crayon.name
        destination.redLabel.text = "\(crayon.red)"
        destination.greenLabel.text = "\(crayon.green)"
        destination.blueLabel.text = "\(crayon.blue)"
        destination.crayon = crayon
    }
}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor =  UIColor(displayP3Red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
        return cell
    }
}
