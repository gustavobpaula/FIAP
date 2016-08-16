//
//  InicioViewController.swift
//  TrabalhoSwift
//
//  Created by hugo duran on 14/8/16.
//  Copyright © 2016 FIAP. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

    var arraySel = [String]()
    var messageFromLogin = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.arraySel = messageFromLogin
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "evtLista"{
           let listaArray = segue.destinationViewController as! TablaViewController
            
            listaArray.arraySelista = arraySel
        }
        
        
        
    }

    @IBAction func lista(sender: AnyObject) {
        self.performSegueWithIdentifier("evtLista", sender: self)
    }
   
}
