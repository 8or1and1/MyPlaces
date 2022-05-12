//
//  ViewController.swift
//  MyPlaces
//
//  Created by Роман Носуля on 12.05.2022.
//

import UIKit

class ViewController: UITableViewController {
	
	let places = Place.getPlaces()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return places.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
		
		
		cell.nameLabel.text = places[indexPath.row].name
		cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
		cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/2
		cell.locationLabel.text = places[indexPath.row].location
		cell.typeLabel.text = places[indexPath.row].type
		return cell
	}
	@IBAction func cancelAction(_ segue: UIStoryboardSegue){}
}
