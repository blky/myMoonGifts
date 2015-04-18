//
//  CalendarViewController.swift
//  MoonGift
//
//  Created by Cindy Zheng on 4/18/15.
//  Copyright (c) 2015 Cindy Z. All rights reserved.
//

import UIKit



class CalendarViewController: UIViewController,  RSDFDatePickerViewDelegate, RSDFDatePickerViewDataSource {
    
    var datePicked = NSDate()
    
    var dateArray = [NSDate]()
    
    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var datePicked = NSDate()
        let calendar = NSCalendar.currentCalendar()
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
    
    
    
    func datePickerView(view: RSDFDatePickerView!, didSelectDate date: NSDate!) {
        
        println ( "\(date)")
        
        datePicked = date
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func startClicked(sender: UIButton) {
        
        println ("start clicked")
        println ("\(datePicked)")
        
        dateArray.append(datePicked)
        println ("start date array is \(dateArray)")
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
