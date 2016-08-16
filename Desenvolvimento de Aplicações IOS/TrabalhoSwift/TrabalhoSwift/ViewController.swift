//
//  ViewController.swift
//  TrabalhoSwift
//
//  Created by hugo duran on 14/8/16.
//  Copyright © 2016 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var senha: UITextField!
    var sUsuario:String?
    var sSenha:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usuario.delegate = self
        senha.delegate = self
        
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target:self,action: Selector("tirarTeclado")))
        
    }
    
    func tirarTeclado(){
        usuario.resignFirstResponder()
        senha.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func validarLogin(sender: AnyObject) {
     
        
        if !usuario.hasText() || !senha.hasText(){
            self.performSegueWithIdentifier("noIdentificado", sender: self)
        }else{
            self.performSegueWithIdentifier("loginOK", sender: self)
        }
        
    }
   
}

