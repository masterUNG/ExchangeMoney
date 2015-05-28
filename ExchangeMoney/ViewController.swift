//
//  ViewController.swift
//  ExchangeMoney
//
//  Created by masterUNG on 8/5/2557 BE.
//  Copyright (c) 2557 masterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var labelTitle : UILabel
    
    @IBOutlet var textFieldThaiBHT : UITextField
    
    
    //Declaring
    let myFactor:Double = 0.031
    
    var intMyMoney:Int = 0
    var douMyMoney:Double = 0.0
    var MyAnswer:Double = 0.0
    var strAnswer:String = ""
    
    
    @IBAction func btnExchange(sender : AnyObject)
    
    {
    
    
        //Get Value from TextField
        intMyMoney = textFieldThaiBHT.text.toInt()!
        
        douMyMoney = Double(intMyMoney)
        
        MyAnswer = douMyMoney * myFactor
        
        strAnswer = String(MyAnswer)
        
        labelTitle.text = strAnswer + " USD"
    
    }
    
    
    
    
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

