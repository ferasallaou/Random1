//
//  ViewController.swift
//  Excerise1
//
//  Created by Feras Allaou on 2/13/19.
//  Copyright © 2019 Feras Allaou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var brick: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func controlBtn(_ sender: UIButton) {
        moveBrick(title: sender.currentTitle!)
    }
    
    
    
    func moveBrick(title: String)
    {
        switch title {
        case "⬅️":
            if (brick.center.x - 45 > 0) {
                UIView.animate(withDuration: 1.0) {
                    self.brick.center.x -= 45
                }
            }
            
        case "▶️":
            if (brick.center.x + 45 < (brick.superview?.bounds.width)!) {
                UIView.animate(withDuration: 1.0) {
                    self.brick.center.x += 45
                }
            }
            
        case "🔼":
            if (brick.center.y - 45 > 0) {
                UIView.animate(withDuration: 1.0) {
                    self.brick.center.y -= 45
                }
            }
            
        case "🔽":
            if (brick.center.y + 45 < (brick.superview?.bounds.height)!) {
                UIView.animate(withDuration: 1.0) {
                    self.brick.center.y += 45
                }
            }
            
        default:
            print("Unknown")
        }
    }
    

}


extension UILabel {
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        
        get {
            return layer.cornerRadius
        }
    }
}
