//
//  ViewController.swift
//  outdoorgames
//
//  Created by Student P_04 on 06/09/19.
//  Copyright © 2019 vishal. All rights reserved.
//

import UIKit
    var games = ["kho-kho","kabadi","cricket","baseball","hollyball"]

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell  = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = games[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let cell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        
        showAlert(title: "outdoorgames", message: games[indexPath.row])
    
    }
    func showAlert(title:String,message:String)
    {
        let alert = UIAlertController(title: title, message:message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",style: .default) { (okAction) in print("OK Pressed")
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true,completion: nil)
    }


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

