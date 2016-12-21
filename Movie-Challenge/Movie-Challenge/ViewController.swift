//
//  ViewController.swift
//  Movie-Challenge
//
//  Created by Enrique Torrendell on 12/21/16.
//  Copyright © 2016 Enrique Torrendell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var leo: UILabel!
    @IBOutlet weak var star: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
        
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        
        
        
        return cell
    }
    
    
    

}

