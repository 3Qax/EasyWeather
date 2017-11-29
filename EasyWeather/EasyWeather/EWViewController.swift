//
//  EWViewController.swift
//  EasyWeather
//
//  Created by Jakub Towarek on 30.11.2017.
//  Copyright © 2017 Jakub Towarek. All rights reserved.
//

import Cocoa

class EWViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
}
extension EWViewController {
    // MARK: Storyboard instantiation
    static func freshController() -> EWViewController {
        //1.
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        //2.
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "EWViewController")
        //3.
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? EWViewController else {
            fatalError("Why cant i find EWViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }
    @IBAction func getIMage(_ sender: Any?)
    {
        
    }
}
