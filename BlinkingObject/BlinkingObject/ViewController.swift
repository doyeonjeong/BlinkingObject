//
//  ViewController.swift
//  BlinkingObject
//
//  Created by Doyeon on 2023/02/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.17, green: 0.24, blue: 0.31, alpha: 1.00)
        self.view.addSubview(drawObject(x: 100, y: 200, width: 200, height: 200))
    }
    
    /// Returns a UIView object with the specified position, size, and background color, and adds a flickering animation to it.
    /// - Parameters:
    ///   - x: The x-coordinate of the top-left corner of the view.
    ///   - y: The y-coordinate of the top-left corner of the view.
    ///   - width: The width of the view.
    ///   - height: The height of the view.
    /// - Returns: A UIView object with the specified position, size, and background color, and a flickering animation.
    func drawObject(x: Int, y: Int, width: Int, height: Int) -> UIView {
        // Create a new UIView object with the specified position, size, and background color
        let object = UIView()
        object.frame = CGRect(x: x, y: y, width: width, height: height)
        object.backgroundColor = UIColor(red: 0.93, green: 0.94, blue: 0.95, alpha: 1.00)
        object.layer.cornerRadius = 20
        
        // Add a flickering animation to the object
        addBlinkingAnimation(to: object, withDuration: 2.0, delay: 0.0, minAlpha: 0.5)
        
        return object
    }

    
    func addBlinkingAnimation(to object: UIView, withDuration duration: TimeInterval, delay: TimeInterval, minAlpha: CGFloat) {
        UIView.animate(withDuration: duration, delay: delay, options: [.repeat, .autoreverse]) {
            object.alpha = minAlpha
        }
    }

}
