//
//  KardexViewController.swift
//  p1-proyecto-sii
//
//  Created by TEMPORAL2 on 06/12/16.
//  Copyright © 2016 TEMPORAL2. All rights reserved.
//

import UIKit

class KardexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let horario = [
        "1P1 CÁLCULO DIFERENCIAL      5  87 Ev. Comp 1",
        "2P1 FUNDAM. DE PROGRAMACIÓN  5  92 Ev. Ord. 1",
        "3P1 TALLER DE ÉTICA          4  84 Ev. Ord. 1",
        "4P1 MATEMÁTICAS DISCRETAS    5  92 Ev. Ord. 1",
        "5P1 TALLER DE ADMINISTRACIÓN 4 100 Ev. Ord. 1",
        "6P1 FUNDAM. DE INVESTIGACIÓN 4  81 Ev. Comp 1",
        "            Promedio Semestral  89    27 / 27",
        
        "1P2 CALC. INTEG.             5  91 Ev. Comp 1",
        "2P2 PROGR. ORIENT. OBJ.      5  91 Ev. Comp 1",
        "3P2 CONTAB. FINAN.           4  93 Ev. Comp 1",
        "4P2 QUÍMICA GENERAL          4  81 Ev. Comp 1",
        "5P2 ÁLGEBRA LINEAL           5  85 Ev. Comp 1",
        "6P2 PROB. Y ESTAD.           5  82 Ev. Comp 1",
        "            Promedio Semestral  89    28 / 28"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let celda = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        celda.textLabel?.text = horario[indexPath.row]
        return celda
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horario.count
    }
}
