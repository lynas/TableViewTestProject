//
//  TableViewCell.swift
//  TableViewTestProject
//
//  Created by Md Sazzad Islam on 1/12/17.
//  Copyright © 2017 lynas. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
	
	@IBOutlet weak var myImageView: UIImageView!
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	@IBOutlet weak var isLiveLabel: UILabel!
	
	
	var cellModel : CellModel! {
		didSet {
			self.updateUI()
		}
	}
	
	func updateUI() {
		myImageView.image = UIImage(named: cellModel.imageName)
		titleLabel.text = cellModel.title
		descriptionLabel.text = cellModel.description
		if cellModel.isLive {
			isLiveLabel.text = "Live"
		}
	}
}
