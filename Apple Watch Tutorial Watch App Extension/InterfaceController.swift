//
//  InterfaceController.swift
//  Apple Watch Tutorial Watch App Extension
//
//  Created by Kristen Sundquist on 11/26/17.
//  Copyright © 2017 Kristen Sundquist. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var count: Int = 0

    @IBOutlet var myLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.updateMyLabelWithCount()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func upButton() {
        self.addOneToCount()
        self.updateMyLabelWithCount()
    }
    
    @IBAction func downButton() {
        self.subOneFromCount()
        self.updateMyLabelWithCount()
    }
    
    func getCountAsString() -> String {
        return "\(self.count)"
    }
    
    func updateMyLabelWithCount() {
        self.myLabel.setText(self.getCountAsString())
    }
    
    func addOneToCount() {
        self.count = self.count + 1
    }
    
    func subOneFromCount() {
        self.count = self.count - 1
    }
}
