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
        
        let viewContainer = UIView(frame:CGRect.zero)
        scrollView.addSubview(viewContainer)
        
        viewContainer.backgroundColor = UIColor.green
        viewContainer.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsets.zero)
            make.width.equalTo(scrollView)
        }
        
        let label = UILabel(frame: CGRect.zero)
        label.font = UIFont.systemFont(ofSize: 15)
        // 设置为0， 才可以自动换行
        label.numberOfLines = 0
        label.text = "一般会把用来#include的文件的扩展名叫 .h，称其为头文件。 #include文件的目的就是把多个编译单元（也就是c或者cpp文件）公用的内容，单独放在一个文件里减少整体代码尺寸"
        viewContainer.addSubview(label)
        // 一定要在加到父view后才可以用
        label.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.orange
        viewContainer.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.top.equalTo(label.snp.bottom)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(50)
             make.bottom.equalTo(0)
        }
        
    }
    
}
