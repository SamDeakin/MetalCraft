//
//  MainWindow.swift
//  MetalCraft
//
//  Created by Sam Deakin on 2016-10-02.
//  Copyright © 2016 Names Are Hard. All rights reserved.
//

import Foundation
import Cocoa

class MainWindow: NSWindow {
    override init(contentRect: NSRect, styleMask style: NSWindowStyleMask, backing bufferingType: NSBackingStoreType, defer flag: Bool) {
        // Make a new, better style to override the old style
        let newStyle: NSWindowStyleMask = [style, .closable, .miniaturizable, .fullSizeContentView]

        super.init(contentRect: contentRect, styleMask: newStyle, backing: bufferingType, defer: flag)

        // Set some extra options after
        self.titleVisibility = .hidden
        self.isMovable = true
        self.titlebarAppearsTransparent = true

        // These are probably unneeded
        self.hasShadow = true

        // These can be added but the background should be blurred for it to be decent
//        self.isOpaque = false
//        self.alphaValue = 0.95
    }

    override var canBecomeKey: Bool {
        return true
    }
}
