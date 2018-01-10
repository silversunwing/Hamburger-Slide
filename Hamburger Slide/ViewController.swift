//
//  ViewController.swift
//  Hamburger Slide
//
//  Created by Bidhee iMac on 1/10/18.
//  Copyright © 2018 Crunchyiee Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewleadingConst: NSLayoutConstraint!
    @IBOutlet weak var viewtrailingConst: NSLayoutConstraint!
    @IBOutlet weak var viewMain: UIView!
    
    private var hamburgerMenuVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func hamburgerBtnPressed(_ sender: Any) {
        
        if !hamburgerMenuVisible{
            viewleadingConst.constant = 150
            viewtrailingConst.constant = -150
            
            hamburgerMenuVisible = true
        }
        else{
            viewleadingConst.constant = 0
            viewtrailingConst.constant = 0
            
            hamburgerMenuVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            debugPrint("Burger Animation Complete")
        }
        
    }
    
    
    
}

