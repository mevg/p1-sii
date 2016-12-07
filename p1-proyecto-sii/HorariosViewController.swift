//
//  HorariosViewController.swift
//  p1-proyecto-sii
//
//  Created by TEMPORAL2 on 06/12/16.
//  Copyright © 2016 TEMPORAL2. All rights reserved.
//

import UIKit

class HorariosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let horario = ["TALLER SIST. OPER.", "TALL. INVEST. I", "PROGRAMACIÓN WEB", "GESTIÓN DE PROY. DE SW", " PROGR. DISP. MÓVILES PLAT. I", "APLICAC. WEB PARA DISP MÓVILES", "PROGR. DISP. MÓVILES PLAT.II"]
    
    let dias = [[4,"07:00-08:00","F7"],[4,"11:00-12:00","F7"],[5,"08:00-09:00","S2"],[5,"14:00-15:00","S2"],[5,"13:00-14:00", "S2"],[4,"12:00-13:00","S2"],[4,"10:00-11:00","S2"]]

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
        
        let diascount = (dias[indexPath.row] as NSArray)[0] as! Int
        
        
        for (var i = 0 ; i < diascount; i++){
            horario_completo += "  " + ((dias[indexPath.row] as NSArray)[1] as! String)
            horario_completo += ", " + ((dias[indexPath.row] as NSArray)[2] as! String)
        }
        
        celda.textLabel?.text = horario_completo
        
        return celda
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horario.count
    }

}
