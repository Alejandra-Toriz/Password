//
//  secondView.swift
//  password
//
//  Created by macbook on 10/10/18.
//  Copyright © 2018 gato3. All rights reserved.
//

import UIKit

class secondView: UIViewController {
  
    @IBOutlet weak var cajaN: UITextField!
    
    @IBOutlet weak var cajaU: UITextField!
    
    @IBOutlet weak var cajaC: UITextField!
    
    var newUser : Usuarios!
    var usuario : String = ""
    var contraseña : String = ""
    var nombre : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defautls = UserDefaults.standard
    
        if let dato = defautls.object(forKey: "CajaN") as? String{
            cajaN.text = dato
        }

        if let dato = defautls.object(forKey: "CajaU") as? String{
            cajaU.text = dato
        }

        if let dato = defautls.object(forKey: "CajaC") as? String{
            cajaC.text = dato
        }
    }
    
    @IBAction func registrar(_ sender: UIButton) {
        nombre = cajaN.text!
    }
    
}
