//
//  ViewController.swift
//  MyPlaces
//
//  Created by Роман Носуля on 12.05.2022.
//

import UIKit

class ViewController: UITableViewController {
	
	let restaurantNames = [
		"Napoli", "KFC", "Волга-Волга", "Додо пицца", "Папа Панда",
		"Сушивёсла", "Ахтуба", "AIK", "Шаурма TJ", "MixFood",
		"AEG Pizza", "Beer Meister", "Lebrok", "Два ежа", "Draft punk"
	]

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return restaurantNames.count
	}
	
	
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		var squareSize = Double(self.tableView(self.tableView, heightForRowAt: indexPath))
		var content = cell.defaultContentConfiguration()
		content.text = restaurantNames[indexPath.row]
		var restaurantImage = UIImage(named: restaurantNames[indexPath.row])!
		restaurantImage = restaurantImage.imageResized(to: CGSize(width: squareSize, height: squareSize))
		
		content.image = restaurantImage
		content.imageProperties.cornerRadius = squareSize/2
		cell.contentConfiguration = content
		return cell
	}
	// MARK: -- table view delegate
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 85
	}
}

extension UIImage {
	func imageResized(to size: CGSize) -> UIImage {
		return UIGraphicsImageRenderer(size: size).image { _ in
			draw(in: CGRect(origin: .zero, size: size))
		}
	}
}
