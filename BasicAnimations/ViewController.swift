//
//  ViewController.swift
//  BasicAnimations
//
//  Created by Stephanie Bowles on 6/11/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var label: UILabel!
    
    override func viewDidLoad() { // only gets called once
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureRedView()
        configureBlueView()
        configureLabel()
    }
    
    override func viewDidAppear(_ animated: Bool) { //loads everytime
        super.viewDidAppear(animated)
        label.center = self.view.center
    }
  
    func configureLabel() {
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        label.widthAnchor.constraint(equalTo: label.heightAnchor, constant: 1).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 12
        
        label.text = "🖐"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 96)
        
    }
    
    
    func configureRedView() {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false  //stuff that gets in our way
        
        view.addSubview(redView)
        
        let redLeadingConstraint = NSLayoutConstraint(item: redView, attribute: .leading,
                                                      relatedBy: .equal,
                                                      toItem: view.safeAreaLayoutGuide,
                                                      attribute: .leading,
                                                      multiplier: 1.0,
                                                      constant: 30)
        let redBottomConstraint = NSLayoutConstraint(item: redView,
                                                     attribute: .bottom,
                                                     relatedBy: .equal,
                                                     toItem: view.safeAreaLayoutGuide,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: 0)
        
        let redHeightConstraint = NSLayoutConstraint(item: redView,
                                                     attribute: .height,
                                                     relatedBy: .equal,
                                                     toItem: nil,
                                                     attribute: .notAnAttribute,
                                                     multiplier: 1.0,
                                                     constant: 100)
        let redViewAspectRatioConstraint = NSLayoutConstraint(item: redView,
                                                             attribute: .width,
                                                             relatedBy: .equal,
                                                             toItem: redView,
                                                             attribute: .height,
                                                             multiplier: 1.0,
                                                             constant: 0)
        NSLayoutConstraint.activate([redLeadingConstraint,
                                     redBottomConstraint,
                                     redHeightConstraint,
                                     redViewAspectRatioConstraint])
}
    
    
    func configureBlueView() {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints  = false
        view.addSubview(blueView)
        
        let blueTrailingConstraint = blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        let blueBottomConstraint = blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        let blueHeightConstraint = blueView.heightAnchor.constraint(equalToConstant: 100)
        let blueViewAspectRatioConstraint = blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([blueTrailingConstraint,
                                     blueBottomConstraint,
                                     blueHeightConstraint,
                                     blueViewAspectRatioConstraint])
    }
    
    
    
    
}
