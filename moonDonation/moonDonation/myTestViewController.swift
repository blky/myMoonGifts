
//
//  myTestViewController.swift
//  moonDonation
//
//  Created by Cindy Zheng on 4/18/15.
//  Copyright (c) 2015 Cindy Z. All rights reserved.
//

import UIKit

class myTestViewController: UIViewController {

    var dateArray = [NSDate]()
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "history "
        myLabel.text = "\(dateArray)"
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
