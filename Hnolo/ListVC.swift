//
//  ListVC.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//
import UIKit

class ListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items = [SomethingCD]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let item = items[indexPath.row]
        cell.id.text = item.id
        cell.lat.text = item.lat
        cell.lon.text = item.lon
        cell.date.text = "\(item.date?.formatted(date: .omitted, time: .standard) ?? "no date")"
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        items = SomeThingCDHelper.shared.fetchAllLocation()
    }
    
}



