//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Роман Носуля on 12.05.2022.
//

import Foundation

struct Place {
	
	var name: String
	var location: String
	var type: String
	var image: String
	
	
	static let restaurantNames = [
		"Napoli", "KFC", "Волга-Волга", "Додо пицца", "Папа Панда",
		"Сушивёсла", "Ахтуба", "AIK", "Шаурма TJ", "MixFood",
		"AEG Pizza", "Beer Meister", "Lebrok", "Два ежа", "Draft punk"
	]
	static func getPlaces() -> [Place] {
		var places = [Place]()
		for place in restaurantNames {
			places.append(Place(name: place, location: "Волжский", type: "Ресторан", image: place))
		}
		return places
	}
}
