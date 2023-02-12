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
    
    func drawObject(x: Int, y: Int, width: Int, height: Int) -> UIView {
        let object = UIView()
        object.frame = CGRect(x: x, y: y, width: width, height: height)
        object.backgroundColor = UIColor(red: 0.93, green: 0.94, blue: 0.95, alpha: 1.00)
        object.layer.cornerRadius = 20
        return object
    }

}
