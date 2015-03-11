//
//  ViewController.swift
//  test
//
//  Created by Developer on 6/03/15.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var conteo  = Float()
    var nm1 = Float()
    var nm2 = Float()
    var lasted = Float()
    var op = Int()
    var na = String()
    var res  = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var lb1: UILabel!
    
    
    
    // ------------------------- numeric buttons -------------------------------
    @IBAction func zro(sender: AnyObject) {
        self.lb1.text = "0"
        self.na = String()
        self.nm1 = Float()
        self.nm2 = Float()
        self.conteo = Float()
        self.lasted = Float()
    }
    
    @IBAction func addnumb(sender: UIButton) {
            addnumber(sender.tag)
    }
    
        //----------------------- end buttons -------------------------------
    
    
    // ---------------------- function buttons --------------------
    
    
    @IBAction func div(sender: UIButton) {
       addnumber(sender.tag)
        op = 101
    }
    
    @IBAction func mut(sender: UIButton) {
        addnumber(sender.tag)
        op = 102
    }
    
    @IBAction func sus(sender: UIButton) {
        addnumber(sender.tag)
        op = 103
    }
    
    @IBAction func sum(sender: UIButton) {
        addnumber(sender.tag)
        op = 104
    }
    @IBAction func resul(sender: UIButton) {
        resultado()
    }
    
 
    //----------------------end func -------------------------------
    
    func addnumber(nm:Int) {
        
        
        var dob: Double = 1
        
        
        
        
        switch nm {
        
        case 1,2,3,4,5,6,7,8,9,0:
            
            if ( self.lb1.text! == "0" || conteo == 0  ){
            
            self.lb1.text = ""
                self.lb1.text = self.lb1.text!.stringByAppendingString(String(nm))
                
                
            }else if ( self.lb1.text != "0" ){
            self.lb1.text = self.lb1.text!.stringByAppendingString(String(nm))
            
            }
            conteo = stofloat( self.lb1.text!)
           
            
            
         
       
            
        case 104,103,102,101:
           
         
            
            println("case \(nm1) \(nm2) ")
            
            if (nm1 != 0 && nm2 != 0){
            resultado()
             
            }
            
        case 107:
            
            
             var cnm = stofloat( self.lb1.text! )
             if cnm != 0 {
             cnm = cnm * -1
           self.lb1.text = String ( cnm.description)
             }else {
            self.nm1 = 0
            self.nm2 = 0
            self.op = 0
            self.conteo = 0
            
            }
                
        default:
            println()
            
        }//end sw
    }//endfn add
    
    func resultado() {
        var calc = Float()
        
        switch op {
        
        case 104:
            calc = nm1 + nm2
        case 103:
            calc = nm2 - nm1
        
        case 102:
            calc = nm1 * nm2
        case 101:
            calc = nm1 / nm2
            
            default:
            println()
        
        
        
        
        }//end sw
        
        lasted = calc
        println("res\(nm1)  \(nm2) ")
        if ( calc.description.rangeOfString(".0") != nil ) {
            var toint: Int = Int(calc)
            self.lb1.text = String(toint)
           
            
        }else {
        
            self.lb1.text = String(calc.description)
            
        }
        if ( calc.description == "inf" || calc.description == "nan"){
            self.lb1.text = "no valido"
        }
        

        
        
        
       conteo = 0
        
    }//end fn op
    
    func stofloat (num:String)->Float {
        var tfloat = (num as NSString ).floatValue
        return tfloat
    
    }
    
    
    
} // end class

