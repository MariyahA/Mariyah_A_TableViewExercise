//
//  ViewController.swift
//  Mariyah_A_TableViewExercise
//
//  Created by Student on 7/27/21.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    let FavGames = ["Call of Duty", "Minecraft", "AFK Arena", "Animal Crossing New Horizons", "Beat Saber"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FavGames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let List = tableView.dequeueReusableCell(withIdentifier: "DaList")
        List?.textLabel?.text = FavGames[indexPath.row]
        return List!
    }


}

