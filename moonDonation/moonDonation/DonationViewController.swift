//
//  DonationViewController.swift
//  moonDonation
//
//  Created by Cindy Zheng on 4/18/15.
//  Copyright (c) 2015 Cindy Z. All rights reserved.
//

import UIKit

class DonationViewController: UIViewController {

    
    @IBAction func okClick(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func okClicked(sender: UIButton) {
    }
    @IBOutlet weak var startDateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
