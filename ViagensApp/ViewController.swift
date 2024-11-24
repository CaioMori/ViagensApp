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
        tripsTableOutlet.delegate = self
        
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1.0)
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self)?.first as? HomeTableViewHeader

        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let height: CGFloat = 300
        
        return height
    }
}
