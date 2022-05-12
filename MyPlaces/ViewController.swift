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
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
		
		
		cell.nameLabel.text = restaurantNames[indexPath.row]
		cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
		cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/2
		return cell
	}
	// MARK: -- table view delegate
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 85
	}
}
