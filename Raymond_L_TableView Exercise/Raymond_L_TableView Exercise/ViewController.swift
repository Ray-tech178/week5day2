//
//  ViewController.swift
//  Raymond_L_TableView Exercise
//
//  Created by Raymond Lo on 8/4/20.
//  Copyright © 2020 Raymond. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	let games = ["Ark: Survival Evolved", "Astroneer", "Black Desert Online", "Borderlands 2", "Dark Souls III", "Dragon's Dogma: Dark Arisen", "Dying Light", "Magicka", "Magicka 2", "Metro 2033 Redux", "Metro: Last Liught Redux", "Metro Exodus", "Payday 2", "Slime Rancher", "Stardew Valley", "Terraria"]

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return games.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = tableView.dequeueReusableCell(withIdentifier: "myCellid")
		cell?.textLabel?.text = games[indexPath.row]
		return cell!
	}


}

