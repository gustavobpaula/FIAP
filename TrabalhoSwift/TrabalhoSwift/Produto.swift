//
//  Produto.swift
//  TrabalhoSwift
//
//  Created by hugo duran on 14/8/16.
//  Copyright © 2016 FIAP. All rights reserved.
//

import UIKit

class Produto: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var resultado: UILabel!

    @IBOutlet weak var Picker: UIPickerView!
    
    var array = ["Leite","Arroz", "Agua", "Batata","Pera","Cafe"]
    var arraySel = [String]()
    
    var respostaSelec=0
    override func viewDidLoad() {
        super.viewDidLoad()

       Picker.delegate = self
       Picker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            
           let loginOKVC = segue.destinationViewController as! InicioViewController
            
           loginOKVC.messageFromLogin = arraySel
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    @IBAction func selecionar(sender: AnyObject) {
        resultado.text = array[respostaSelec]
        arraySel.append(array[respostaSelec])
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        respostaSelec = row
    }
}
