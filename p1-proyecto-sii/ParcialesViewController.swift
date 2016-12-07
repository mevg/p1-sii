//
//  ParcialesViewController.swift
//  p1-proyecto-sii
//
//  Created by TEMPORAL2 on 06/12/16.
//  Copyright © 2016 TEMPORAL2. All rights reserved.
//

import UIKit

class ParcialesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let horario = ["TALLER SIST. OPER.", "TALL. INVEST. I", "PROGRAMACIÓN WEB", "GESTIÓN DE PROY. DE SW", " PROGR. DISP. MÓVILES PLAT. I", "APLICAC. WEB PARA DISP MÓVILES", "PROGR. DISP. MÓVILES PLAT.II"]
    
    let dias = [["35","80","90","70","84","90"],["35","80","90","70","84","90"],["35","80","70","70","94","90"],["85","80","50","70","84"],["80","80","90","80","84","80"],["85","90","60","89","95","70"],["98","80","90","90","86","90"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "celda"
        let celda = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        var horario_completo = horario[indexPath.row]
        
        for (var i = 0 ; i < dias[indexPath.row].count; i++){
            horario_completo += "  " + (dias[indexPath.row][i] )
        }
        
        celda.textLabel?.text = horario_completo
        
        return celda
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horario.count
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
