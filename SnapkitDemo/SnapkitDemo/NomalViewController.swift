//
//  NomalViewController.swift
//  SnapkitDemo
//
//  Created by keso on 2017/8/10.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit
import SnapKit

class NomalViewController: UIViewController {

    var testView = UIView()
    var view1 = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
        setupScrollView()
        
        let button = UIButton()
        button.backgroundColor = UIColor.cyan
        button.setTitle("点击", for: UIControlState.normal)
        button.addTarget(self, action: #selector(tapAction), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.bottom.equalTo(-50)
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.left.equalTo(50)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tapAction(sender:UIButton) {
        let view2 = UIView()
        view2.backgroundColor = UIColor.orange
        testView.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.left.equalTo(0)
            make.bottom.equalTo(0)
        }
        testView.snp.updateConstraints { (make) in
            make.height.equalTo(100)
        }
    }
    
    private func setup() {
        
        testView.backgroundColor = UIColor.red
        self.view.addSubview(testView)
        
        testView.snp.makeConstraints { (make) in
            make.top.left.equalTo(100)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        view1.backgroundColor = UIColor.blue
        testView.addSubview(view1)
        view1.snp.makeConstraints { (make) in
            make.top.left.equalTo(0)
            make.width.equalTo(120)
            make.height.equalTo(50)
        }
    }
    
    
    private func setupScrollView() {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.yellow
        self.view.addSubview(scrollView)
        
        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(250)
            make.height.equalTo(200)
            make.left.right.equalTo(0)
        }
    }
    
}
