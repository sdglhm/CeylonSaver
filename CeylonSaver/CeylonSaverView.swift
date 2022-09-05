//
//  CeylonSaverView.swift
//  CeylonSaver
//
//  Created by Lahiru Himesh Madusanka on 2022-09-03.
//

import ScreenSaver

class CeylonSaverView: ScreenSaverView {
    
    var image: NSImage?
    var interval = 5
    
    var transition = 1
    
    var imageUrl = "https://api.lorem.space/image?w=1024&h=768" as NSString
    
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        
        animationTimeInterval=TimeInterval(interval)

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
    }
    
    
    override func draw(_ rect: NSRect) {
        loadImage(rect: rect)
        
    }
    
    private func drawBackground(){
        
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
