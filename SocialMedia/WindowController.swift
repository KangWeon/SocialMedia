//
//  WindowController.swift
//  SocialMedia
//
//  Created by klarheit on 09/08/2018.
//  Copyright © 2018 klarheit. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet var shareButton: NSButton!
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        shareButton.sendAction(on: .leftMouseDown)
    }
    
    @IBAction func shareClicked(_ sender: NSView) {
        guard let split = contentViewController as? NSSplitViewController else { return }
        guard let detail = split.children[1] as? DetailViewController else { return }
        guard let image = detail.imageView.image else { return }
        let picker = NSSharingServicePicker(items: [image])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }

}
