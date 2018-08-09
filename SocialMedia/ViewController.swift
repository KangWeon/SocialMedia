//
//  ViewController.swift
//  StormViewer
//
//  Created by klarheit on 07/08/2018.
//  Copyright © 2018 klarheit. All rights reserved.
//

import Cocoa

class ViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSLog("%@", #function)
        
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
            NSLog("%@", #function)
        }
    }
    
    
    // @IBAction func shareClicked(_ sender: NSView) {
    //     guard let detail = children[1] as? DetailViewController else { return }
    //     guard let image = detail.imageView.image else { return }
    //     let picker = NSSharingServicePicker(items: [image])
    //     picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    // }

}

