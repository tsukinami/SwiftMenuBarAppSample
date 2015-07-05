//
//  AppDelegate.swift
//  SwiftMenuBarAppSample
//
//  Created by tsukinami on 2015/07/05.
//  Copyright (c) 2015 Tsukinamisoft. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let menu = NSMenu()
        self.statusItem.title = "Sample"
        self.statusItem.highlightMode = true
        self.statusItem.menu = menu
        
        let menuItem = NSMenuItem()
        menuItem.title = "Quit"
        menuItem.keyEquivalent = "q"
        menuItem.action = Selector("quit:")
        menu.addItem(menuItem)    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func quit(sender: NSButton) {
        NSApplication.sharedApplication().terminate(self)
    }
}

