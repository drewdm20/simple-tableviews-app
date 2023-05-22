//
//  ViewController.swift
//  CustomTableView
//
//  Created by DA MAC M1 155 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var carTitles = ["Audi", "BMW", "Mercedes", "Porsche", "VW"]
    var carImages = [#imageLiteral(resourceName: "Image"), #imageLiteral(resourceName: "Image 1"), #imageLiteral(resourceName: "Image 2"), #imageLiteral(resourceName: "Image 3"), #imageLiteral(resourceName: "Image 4")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = carTitles[indexPath.row]
        cell.imageView?.image = carImages[indexPath.row]
        return cell
    }
}
