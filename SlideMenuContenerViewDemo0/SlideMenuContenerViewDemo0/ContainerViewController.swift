//
//  ViewController.swift
//  SlideMenuContenerViewDemo0
//
//  Created by duycuong on 1/28/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var leadingSlideMenu: NSLayoutConstraint!
    @IBOutlet weak var slideContainerMenuView: UIView!
    @IBOutlet weak var buttonBackGround: UIButton!
    private var isSlideMenuShow = false {
        didSet {
            UIView.animate(withDuration: 0.35) {
                
                self.leadingSlideMenu.constant = self.isSlideMenuShow ? 0 : -(self.slideContainerMenuView.bounds.size.width + self.slideContainerMenuView.layer.shadowOffset.width)
                self.buttonBackGround.alpha = self.isSlideMenuShow ? 1 : 0
                self.view.layoutIfNeeded()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setShadow()
        NotificationCenter.default.addObserver(self, selector: #selector(needName(notification:)), name: .nameKey, object: nil)
    }
    
    
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setShadow() {
        
        slideContainerMenuView.layer.shadowColor = UIColor.gray.cgColor
        slideContainerMenuView.layer.shadowOffset = CGSize(width: 15, height: 0)
        slideContainerMenuView.layer.shadowOpacity = 0.35
    }
    
    @objc private func needName(notification: NSNotification) {
        isSlideMenuShow = !isSlideMenuShow
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        isSlideMenuShow = false
        //        setShadow()
        
    }
    
    
    @IBAction func clickButton(_ sender: UIButton) {
        isSlideMenuShow = !isSlideMenuShow
    }
    
}



