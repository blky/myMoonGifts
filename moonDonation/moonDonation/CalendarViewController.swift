//
//  CalendarViewController.swift
//  moonDonation
//
//  Created by Cindy Zheng on 4/18/15.
//  Copyright (c) 2015 Cindy Z. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController ,RSDFDatePickerViewDelegate, RSDFDatePickerViewDataSource{
    var datePicked = NSDate()
    
    var dateArray = [NSDate]()
    
    let calendar = NSCalendar.currentCalendar()

    @IBOutlet var myView: UIView!
    
   
    func datePickerView(view: RSDFDatePickerView!, shouldMarkDate date: NSDate!) -> Bool {
        
        
        let dif = calendar.compareDate(date, toDate: datePicked, toUnitGranularity: NSCalendarUnit.DayCalendarUnit)
        
        println ("\(dif)")
        
        switch dif {
        case NSComparisonResult.OrderedSame:
            return true
            
        default :
             return false
            
        }
         
    }
    @IBAction func clickStart(sender: UIButton) {
        println ("start clicked")
        //        println ("\(datePicked)")
        
        dateArray.append(datePicked)
        //        println ("start date array is \(dateArray)")
        
        
        var alertController = UIAlertController(title: "donation", message: "Would you like to donate to homeless women in need of women hygen products?", preferredStyle: .Alert)
        
        var willDonate = false
        
        // Create the actions
        var okAction = UIAlertAction(title: "send me to donation page", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            willDonate = true
            NSLog("OK Pressed")
            self.performSegueWithIdentifier("toDonate", sender: self)
    
        }
        var cancelAction = UIAlertAction(title: "maybe next time", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            NSLog("Cancel Pressed")
            self.performSegueWithIdentifier("toAdd", sender: self)
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.presentViewController(alertController, animated: true, completion: nil)
   
    }
    
    
    @IBAction func clickHisotry(sender: AnyObject) {
    }
    func datePickerView(view: RSDFDatePickerView!, didSelectDate date: NSDate!) {
        
        println ( "\(date)")
        datePicked = date
    }
    override func viewDidLoad() {
        super.viewDidLoad()
                
        var datePicked = NSDate()
        
        println("view did load \(datePicked)")
                let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: datePicked)
        let hour = components.hour
        let minutes = components.minute
        
       
        
        self.navigationItem.title = "Calendar"
        // Do any additional setup after loading the view.
        
        var calendarView = RSDFDatePickerView(frame: CGRectMake(CGRectGetMinX(self.view.frame), CGRectGetMinY(self.view.frame), CGRectGetWidth(self.view.frame), 340))
        
        
        calendarView.dataSource = self
        calendarView.delegate = self
        self.myView.addSubview(calendarView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        switch segue.identifier! {
            
        case  "todAdd" :
            let ui = segue.destinationViewController as! AddViewController
            ui.dateStart = datePicked
            
        case "toDonate":
            let ui = segue.destinationViewController as! DonationViewController
            
        case "toMy":
            
            let ui = segue.destinationViewController as! myTestViewController
            ui.dateArray = self.dateArray
//            
//            performSegueWithIdentifier("toHistoryt", sender: self)
        default:
            
            break
            
        }
    }

}
