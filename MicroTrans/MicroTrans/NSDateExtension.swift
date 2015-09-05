//
//  Date.swift
//  MicroTrans
//
//  Created by Kyle Swartz on 9/5/15.
//  Copyright (c) 2015 Emil Shirima. All rights reserved.
//

import Foundation

extension NSDate {
    var stringFormattedAsRFC3339: String {
        return rfc3339formatter.stringFromDate(self)
    }
    
    class func dateFromRFC3339FormattedString(rfc3339FormattedString:String) -> NSDate?
    {
        /*
        NOTE: will replace this with a failible initializer when Apple fixes the bug
        that requires the initializer to initialize all stored properties before returning nil,
        even when this is impossible.
        */
        if let d = rfc3339formatter.dateFromString(rfc3339FormattedString)
        {
            return NSDate(timeInterval:0,sinceDate:d)
        }
        else {
            return nil
        }
    }
}

private var rfc3339formatter:NSDateFormatter = {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z"
    formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
    formatter.calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierISO8601)!
    formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
    return formatter
    }()