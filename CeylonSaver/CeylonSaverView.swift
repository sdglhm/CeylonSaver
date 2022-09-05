//
//  CeylonSaverView.swift
//  CeylonSaver
//
//  Created by Lahiru Himesh Madusanka on 2022-09-03.
//

import ScreenSaver

class CeylonSaverView: ScreenSaverView {
    
    var image: NSImage?
    var interval = 25
    
    var transition = 1
    
    var imageUrl = "https://ceylon-saver-app.vercel.app/api/index" as NSString
    
    private var rectn: NSRect?
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        
        animationTimeInterval=TimeInterval(interval)
        
        self.rectn = frame
        
    }
    
    required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func startAnimation() {
        super.startAnimation()
    }
    
    override func stopAnimation() {
        super.stopAnimation()
    }
    
    override func animateOneFrame() {
        needsDisplay = true
        
        loadImage(rect: self.rectn! as NSRect)
    }
    
    
    override func draw(_ rect: NSRect) {
        loadImage(rect: rect)
    }
    
    
    func performGammaFade() -> Bool {
        return true
    }
    
    
    
    func loadImage(rect: NSRect){
        let url = URL(string:  self.imageUrl as String)
        let data = try? Data(contentsOf: url!)
        
        self.image = NSImage(data: data!)
        
        self.image?.draw(in: rect)
    }
}
