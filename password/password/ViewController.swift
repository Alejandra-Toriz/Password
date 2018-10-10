//
//  ViewController.swift
//  password
//
//  Created by macbook on 08/10/18.
//  Copyright © 2018 gato3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var users: [Usuarios] = []
    
    @IBOutlet weak var user: UITextField!

    @IBOutlet weak var password: UITextField!
    
    var usuario: String = ""
    var contraseña: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //recuperar datos:
        let defautls = UserDefaults.standard
        let defautls1 = UserDefaults.standard
        
         if let dato = defautls.object(forKey: "Usser") as? String{
         user.text = dato
            usuario = dato
         }
         else{
         user.text = "No hay nada"
         }
         
         if let dato = defautls1.object(forKey: "Password") as? String{
         password.text = dato
           contraseña = dato //String("\(defautls1)")
         }
         else{
         password.text = "No hay nada"
            
        }
        
    }

    @IBAction func ingresar(_ sender: UIButton) {
        for i in users{
            if i.usuario == usuario{
                print("Oye si estas compa!!!")
                if i.contraseña == contraseña{
                    print("Y además tu contraseña es correcta")
                }
            }
        }
        print("pos no estas compa")
    }
}
