//
//  ViewController.swift
//  TableViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

	
	@IBOutlet weak var myTableView: UITableView!
	
	var items = [CellModel]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		myTableView.dataSource = self
		myTableView.estimatedRowHeight = 100
		myTableView.rowHeight = UITableViewAutomaticDimension
		
		items.append(CellModel(imageName: "1", title: "t1", description: "d1", isLive: true))
		items.append(CellModel(imageName: "2", title: "t1", description: "d1", isLive: false))
		items.append(CellModel(imageName: "3", title: "t1", description: "d1", isLive: false))
		items.append(CellModel(imageName: "4", title: "t1", description: "d1", isLive: false))
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell_tab", for: indexPath) as! TableViewCell
		cell.cellModel = items[indexPath.row]
		return cell
	}


}

