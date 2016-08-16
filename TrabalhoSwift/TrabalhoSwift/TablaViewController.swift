//
//  TablaViewController.swift
//  TrabalhoSwift
//
//  Created by Usuário Convidado on 15/08/16.
//  Copyright © 2016 FIAP. All rights reserved.
//

import UIKit

class TablaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    //let myarray = ["item1", "item2", "item3"]
    var arraySelista = [String]()
    var myarray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myarray = arraySelista 

        func viewDidAppear(animated: Bool) {
            super.viewDidAppear(animated)
            tableview.reloadData()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell", forIndexPath: indexPath) 
        cell.textLabel?.text = myarray[indexPath.item]
        return cell
    }
    
}
