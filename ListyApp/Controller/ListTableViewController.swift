//
//  ListTableViewController.swift
//  ListyApp
//
//  Created by Danish Munir on 09/06/2022.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ListTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParallexTVCell", for: indexPath) as!  ParallexTVCell
        let nameIndex = nameArray[indexPath.row].uppercased()
        let imgIndex = imageArray[indexPath.row]
        cell.configureCell(with: imgIndex, andDescription:  nameIndex)
        return cell
    }
}

