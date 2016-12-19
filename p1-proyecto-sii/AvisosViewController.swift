//
//  AvisosViewController.swift
//  p1-proyecto-sii
//
//  Created by TEMPORAL2 on 06/12/16.
//  Copyright © 2016 TEMPORAL2. All rights reserved.
//

import UIKit

class AvisosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func log_out(sender: AnyObject) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
        let loginViewController = storyBoard.instantiateViewControllerWithIdentifier("login") as! UIViewController
        self.presentViewController(loginViewController, animated:true, completion:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
