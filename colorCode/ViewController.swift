//
//  ViewController.swift
//  colorCode
//
//  Created by Nikunj on 18/12/14.
//  Copyright (c) 2014 Nikunj. All rights reserved.
//

import UIKit


let myCell = UIColor___hexString()
var x = UInt32();
var textField = UITextField();

class ViewController: UIViewController,UITextFieldDelegate  {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var loadingView: UIView = UIView()
        loadingView.frame = CGRectMake(0, 0, 80, 80)
        loadingView.center = self.view.center
        
   textField = UITextField(frame: CGRect(x: 20, y: 100, width:280, height: 30));
          textField.backgroundColor = UIColor.whiteColor()
        textField.delegate = self
        self.view.addSubview(textField)
        
        var button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(100, 200, 100, 50)
        button.backgroundColor = UIColor.whiteColor()
        button.setTitle("Submit", forState: UIControlState.Normal)
        button.addTarget(self, action: "pressed:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)        // set background color
       self.view.backgroundColor = myCell.UIColorFromHex(0x444444, alpha: 0.7)
        
            }
    
    func pressed(sender: UIButton!) {
        var str : NSString;
        str = textField.text;
        var i = str.intValue;
        x = UInt32(i);

        self.view.backgroundColor = myCell.UIColorFromHex(x, alpha: 0.7)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        textField.resignFirstResponder()
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}


