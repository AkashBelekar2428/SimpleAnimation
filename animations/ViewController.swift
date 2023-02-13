//
//  ViewController.swift
//  animations
//
//  Created by Reapmind on 18/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let topView:UIView = {
        var topView = UIView()
        topView.backgroundColor = .red
        
        
        return topView
    }()
    private let button:UIButton = {
        var button = UIButton()
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.backgroundColor = UIColor.yellow
        button.addTarget(self, action: #selector(Animatetion), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(topView)
        view.addSubview(button)
        
    }
    override func viewDidLayoutSubviews(){
    super.viewDidLayoutSubviews()
        topView.center = view.center
        topView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        button.frame = CGRect(x: (view.frame.size.width - 200)/2, y: view.frame.height - 220, width: 200, height:70)
        
    
    }
    @objc private func Animatetion(){
        UIView.animate(withDuration: 1,animations: {
            self.topView.frame = CGRect(x: 0, y: 10, width: 200, height: 200)
            self.topView.center = self.view.center
        }, completion: { [self] done in
                if done{
                    shrink()
                  
                }
      
            })
            
        }
    func shrink(){
        UIView.animate(withDuration: 1,  animations: {
            self.topView.frame = CGRect(x: 0, y: 10, width: 200, height: 200)
            self.topView.center = self.view.center
       
    },completion:{ done in
        
        self.Animatetion()
          })
    }
    }





