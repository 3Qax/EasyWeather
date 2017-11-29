//
//  AppDelegate.swift
//  EasyWeather
//
//  Created by Jakub Towarek on 29.11.2017.
//  Copyright © 2017 Jakub Towarek. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    //połączyć zmienną ima z obrazkiem z main.storyboard
    let img = NSImage()
    let popover = NSPopover()
    @objc func printQuote(_ sender: Any?)
    {
        let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
        let quoteAuthor = "Mark Twain"
        print("\(quoteText) — \(quoteAuthor)")
    }
    @objc func togglePopover(_ sender: Any?)
    {
        if popover.isShown
        {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
    func showPopover(sender: Any?)
    {
        if let button = statusItem.button
        {
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
            //dodać pobranie obrazka i wyświetlenie go
        }
    }
    
    func closePopover(sender: Any?)
    {
        popover.performClose(sender)
    }
    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        if let button = statusItem.button
        {
            button.image = NSImage(named:NSImage.Name("ico"))
            button.action = #selector(togglePopover(_:))
        }
        popover.contentViewController = EWViewController.freshController()
    }
    
    func applicationWillTerminate(_ aNotification: Notification)
    {
        // Insert code here to tear down your application
    }


}

