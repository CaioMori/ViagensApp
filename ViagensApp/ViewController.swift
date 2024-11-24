//
//  ViewController.swift
//  ViagensApp
//
//  Created by Caio Mori on 23/11/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tripsTableOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tripsTableOutlet.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Viagem \(indexPath.row)"
        
        return cell
    }
}
