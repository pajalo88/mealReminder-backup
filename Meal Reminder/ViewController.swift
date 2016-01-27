//
//  ViewController.swift
//  Meal Reminder
//
//  Created by ploots on 1/13/16.
//  Copyright © 2016 ploots. All rights reserved.
//

import UIKit
import iAd
import AdSupport
import Foundation


class ViewController: UIViewController, ADBannerViewDelegate, UIPopoverPresentationControllerDelegate {
    
    
    let date = NSDate()
    let outputFormat = NSDateFormatter()
    let timestamp: String = ""

    
    var currentTime: String = ""
    
    var fireFunction = NSTimer?()
        
    
    func stupid() {
        
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)

        
        switch timestamp {
        case time1, time2, time3, time4, time5, time6, time7, time8, time9, time10, time11, time12, time13, time14, time15, time16, time17, time18, time19, time20, time21, time22, time23, time24, time25, time26, time27, time28, time29, time30, time31, time32, time33, time34, time35, time36:
            localNotification()
            timeToEatAlert()
            
            
        

        default:
            break
            }
        
    
        
       print(timestamp)
    }
    
    var time1: String = ""
    var time2: String = ""
    var time3: String = ""
    var time4: String = ""
    var time5: String = ""
    var time6: String = ""
    var time7: String = ""
    var time8: String = ""
    var time9: String = ""
    var time10: String = ""
    var time11: String = ""
    var time12: String = ""
    var time13: String = ""
    var time14: String = ""
    var time15: String = ""
    var time16: String = ""
    var time17: String = ""
    var time18: String = ""
    var time19: String = ""
    var time20: String = ""
    var time21: String = ""
    var time22: String = ""
    var time23: String = ""
    var time24: String = ""
    var time25: String = ""
    var time26: String = ""
    var time27: String = ""
    var time28: String = ""
    var time29: String = ""
    var time30: String = ""
    var time31: String = ""
    var time32: String = ""
    var time33: String = ""
    var time34: String = ""
    var time35: String = ""
    var time36: String = ""
    
    
    

    @IBOutlet weak var Banner: ADBannerView!
    
    
    @IBOutlet weak var fiveAM: UILabel!
    
    @IBOutlet weak var sixAM: UILabel!
    
    @IBOutlet weak var sevenAM: UILabel!
    
    @IBOutlet weak var eightAM: UILabel!
    
    @IBOutlet weak var nineAM: UILabel!
    
    @IBOutlet weak var tenAM: UILabel!
    
    @IBOutlet weak var elevenAM: UILabel!
    
    @IBOutlet weak var twelvePM: UILabel!
    
    @IBOutlet weak var onePM: UILabel!
    
    @IBOutlet weak var twoPM: UILabel!
    
    @IBOutlet weak var threePM: UILabel!
    
    @IBOutlet weak var fourPM: UILabel!
    
    @IBOutlet weak var fivePM: UILabel!
    
    @IBOutlet weak var sixPM: UILabel!
    
    @IBOutlet weak var sevenPM: UILabel!
    
    @IBOutlet weak var eightPM: UILabel!
    
    @IBOutlet weak var ninePM: UILabel!
    
    @IBOutlet weak var tenPM: UILabel!
    
    
    
    
    var militaryHour: Bool = false
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        let localNotification: UILocalNotification = UILocalNotification() // 1
        localNotification.alertAction = "Membership Status" // 2
        localNotification.alertBody = "Our system has detected that your membership is inactive." // 3
        localNotification.fireDate = self.createDateWithTime(NSDate(), hour: 3, minute: 17) // 4
        localNotification.category = "status" // 5
        localNotification.userInfo = [ "cause": "inactiveMembership"] // 6
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
        
        
        
        fireFunction = NSTimer.scheduledTimerWithTimeInterval(10, target: self, selector: Selector("stupid"), userInfo: nil, repeats: true)


        
        let timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("getTime"), userInfo: nil, repeats: true)
       
        self.canDisplayBannerAds = true
        self.Banner?.delegate = self
        self.Banner?.hidden = true
        
        print(timer)
        
        
        
    }
    
    func createDateWithTime(date: NSDate, hour: Int, minute: Int) -> NSDate
    {
        let today = date
        let gregorian: NSCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let dateComponents = gregorian.components([.Year, .Month, .Day], fromDate: today)
        
        dateComponents.hour = hour;
        dateComponents.minute = minute;
        
        let todayAtX = gregorian.dateFromComponents(dateComponents)
        return todayAtX!
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        self.Banner?.hidden = false
        
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        self.Banner?.hidden = true
    }
    
    func localNotification() {
        
        let notification:UILocalNotification = UILocalNotification()
        notification.category = "Utility"
        notification.alertAction = "Open Meal Reminder"
        notification.alertBody = "It's time to eat!"
       
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }
    
    func getTime() {
        
        let date = NSDate()
        let outputFormat = NSDateFormatter()
        
        outputFormat.locale = NSLocale(localeIdentifier:"en_US")

        
        
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)
        
    
        
        if militaryHour == false {
            outputFormat.dateFormat = "hh:mm:ss a"
            fiveAM.text = "5:00 AM"
            sixAM.text = "6:00 AM"
            sevenAM.text = "7:00 AM"
            eightAM.text = "8:00 AM"
            nineAM.text = "9:00 AM"
            tenAM.text = "10:00 AM"
            elevenAM.text = "11:00 AM"
            twelvePM.text = "12:00 PM"
            onePM.text = "1:00 PM"
            twoPM.text = "2:00 PM"
            threePM.text = "3:00 PM"
            fourPM.text = "4:00 PM"
            fivePM.text = "5:00 PM"
            sixPM.text = "6:00 PM"
            sevenPM.text = "7:00 PM"
            eightPM.text = "8:00 PM"
            ninePM.text = "9:00 PM"
            tenPM.text = "10:00 PM"
            
        }
        else{
            outputFormat.dateFormat = "HH:mm:ss"
            fiveAM.text = "05:00"
            sixAM.text = "06:00"
            sevenAM.text = "07:00"
            eightAM.text = "08:00"
            nineAM.text = "09:00"
            tenAM.text = "10:00"
            elevenAM.text = "11:00"
            twelvePM.text = "12:00"
            onePM.text = "13:00"
            twoPM.text = "14:00"
            threePM.text = "15:00"
            fourPM.text = "16:00"
            fivePM.text = "17:00"
            sixPM.text = "18:00"
            sevenPM.text = "19:00"
            eightPM.text = "20:00"
            ninePM.text = "21:00"
            tenPM.text = "22:00"
            
        }
        
        timeLabel.text = (outputFormat.stringFromDate(date))  // This line here will update your timeLabel with the current time every second

        
    }
    
    
    
    func checkTime() {
        
        currentTime = timestamp
        print(currentTime, "This i sthe time")
        isOn()
        

    }
    
    @IBAction func showPopover(sender: AnyObject) {
        
        let popoverContent = self.storyboard?.instantiateViewControllerWithIdentifier("popOverController") as! PopoverViewController
        
        popoverContent.modalPresentationStyle = .Popover
        var popover = popoverContent.popoverPresentationController
        
        if let popover = popoverContent.popoverPresentationController {
            
            let viewForSource = sender as! UIView
            popover.sourceView = viewForSource
            
            // the position of the popover where it's showed
            popover.sourceRect = viewForSource.bounds
            
            // the size you want to display
            popoverContent.preferredContentSize = CGSizeMake(210,220)
            popover.delegate = self
        }            
        
        self.presentViewController(popoverContent, animated: true, completion: nil)
    
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var hourChanged: UISwitch!
   
    @IBAction func hourChangeTapped(sender: AnyObject) {
        
        
        if hourChanged.on == true {
            
            militaryHour = true
            print("24 hour clock on")
            
        }
        else {
            militaryHour = false
            print("24 hour clock off")
            
        }
        
    }
    
    
    func timeToEatAlert(){
        
        let Alert = UIAlertController(title: "Time To Eat", message: "It is time to chow down!", preferredStyle: .Alert)
        
        let dismissButton = UIAlertAction(title: "Dismiss", style: .Cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
        })
        
        Alert.addAction(dismissButton)
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var fiveAMs: UISwitch!
    @IBAction func fiveAMSwitch(sender: AnyObject) {
        
        if fiveAMs.on == true {
           time1 = "5:00 AM"
            time19 = "5:00"
            
        }
        else {
            time1 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var sixAMs: UISwitch!
    @IBAction func sixAMSwitch(sender: AnyObject) {
        
        if sixAMs.on == true {
            
            time2 = "6:00 AM"
            time20 = "6:00"

        }
        else {
            time2 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var sevenAMs: UISwitch!
    @IBAction func sevenAMSwitch(sender: AnyObject) {
        
        if sevenAMs.on == true {
            
            time3 = "7:00 AM"
            time21 = "7:00"

            
        }
        else {
            time3 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var eightAMs: UISwitch!
    @IBAction func eightAMSwitch(sender: AnyObject) {
        
        if eightAMs.on == true {
            
            time4 = "8:00 AM"
            time22 = "8:00"
            
        }
        else {
            time4 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var nineAMs: UISwitch!
    @IBAction func nineAMSwitch(sender: AnyObject) {
        
        if nineAMs.on == true {
            
            time5 = "9:00 AM"
            time23 = "9:00"

        }
        else {
            time5 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var tenAMs: UISwitch!
    @IBAction func tenAMSwitch(sender: AnyObject) {
        
        
        if tenAMs.on == true {
            time6 = "10:00 AM"
            time24 = "10:00"
           
        }
        else {
            time6 = ""
            print("switch is off")
            
        }
        
    }
    
    @IBOutlet weak var elevenAMs: UISwitch!
    @IBAction func elevenAMSwitch(sender: AnyObject) {
        
        if elevenAMs.on == true {
            
            
            time7 = "11:00 AM"
            time25 = "11:00"

            
        }
        else {
            time7 = ""
            print("switch is off")
            
        }
        
    }
    
    @IBOutlet weak var twelvePMs: UISwitch!
    @IBAction func twelvePMSwitch(sender: AnyObject) {
        
        if twelvePMs.on == true {
            
            time8 = "12:00 PM"
            time26 = "12:00"

            
        }
        else {
            time8 = ""
            print("switch is off")
            
        }
        
    }
    
    @IBOutlet weak var onePMs: UISwitch!
    @IBAction func onePMSwitch(sender: AnyObject) {
        
        if onePMs.on == true {
            
            time9 = "1:00 PM"
            time27 = "13:00"
            
        }
        else {
            time9 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var twoPMs: UISwitch!
    @IBAction func twoPMSwitch(sender: AnyObject) {
        
        if twoPMs.on == true {
            
            time10 = "2:00 PM"
            time28 = "14:00"
            
        }
        else {
            time10 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var threePMs: UISwitch!
    @IBAction func threePMSwitch(sender: AnyObject) {
        if threePMs.on == true {
            
            time11 = "3:21 PM"
            time29 = "15:00"
        }
        else {
            time11 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var fourPMs: UISwitch!
    @IBAction func fourPMSwitch(sender: AnyObject) {
        
        if fourPMs.on == true {
            
            time12 = "4:00 PM"
            time30 = "16:00"
            
        }
        else {
            time12 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var fivePMs: UISwitch!
    @IBAction func fivePMSwitch(sender: AnyObject) {
        
        if fivePMs.on == true {
            
            time13 = "5:00 PM"
            time31 = "17:00"
            
        }
        else {
            time13 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var sixPMs: UISwitch!
    @IBAction func sixPMSwitch(sender: AnyObject) {
        
        if sixPMs.on == true {
            
            time14 = "6:00 PM"
            time32 = "18:00"
            
        }
        else {
            time14 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var sevenPMs: UISwitch!
    @IBAction func sevenPMSwitch(sender: AnyObject) {
        
        if sevenPMs.on == true {
            
            time15 = "7:00 PM"
            time33 = "19:00"
            
        }
        else {
            time15 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var eightPMs: UISwitch!
    @IBAction func eightPMSwitch(sender: AnyObject) {
        
        if eightPMs.on == true {
            
           time16 = "8:00 PM"
            time34 = "20:00"
            
        }
        else {
            time16 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var ninePMs: UISwitch!
    @IBAction func ninePMSwitch(sender: AnyObject) {
        
        if ninePMs.on == true {
            
           time17 = "9:00 PM"
            time35 = "21:00"
            
        }
        else {
            time17 = ""
            print("switch is off")
            
        }
    }
    
    @IBOutlet weak var tenPMs: UISwitch!
    @IBAction func tenPMSwitch(sender: AnyObject) {
        
        if tenPMs.on == true {
            
            time18 = "10:00 PM"
            time36 = "22:00"
            
        }
        else {
            
            time18 = ""
            print("switch is off")
            
        }
    }
    
    func isOn() {
        if threePMs.on == true {
            time11 = "3:24 PM"
            time29 = "15:00"
            
        }
        
        else {
            time11 = ""
            time29 = ""
            print("switch is off")
            
        }
    }

   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

