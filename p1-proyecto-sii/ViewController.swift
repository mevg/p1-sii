//
//  ViewController.swift
//  p1-proyecto-sii
//
//  Created by TEMPORAL2 on 30/11/16.
//  Copyright © 2016 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNoContol: UITextField!
    @IBOutlet weak var txtNip: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doLogin(sender: AnyObject) {
        
        let noControl = txtNoContol.text
        let nip = txtNip.text
        
        if (noControl == "12550554"){
            if (nip == "5197"){
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                
                let avisosViewController = storyBoard.instantiateViewControllerWithIdentifier("tabbar") as! UITabBarController
                self.presentViewController(avisosViewController, animated:true, completion:nil)
            }
            let alerta = UIAlertController(title: "Datos Incorrectos",
                message: "NIP incorrecto",
                preferredStyle: .Alert)
            
            let action = UIAlertAction(title: "ok", style: .Destructive, handler: nil)
            
            alerta.addAction(action)
            
            presentViewController(alerta, animated: true, completion: nil)
        }
        let alerta = UIAlertController(title: "Datos Incorrectos",
            message: "No. de Control Incorrecto",
            preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "ok", style: .Destructive, handler: nil)
        
        alerta.addAction(action)
        
        presentViewController(alerta, animated: true, completion: nil)
    }

}

