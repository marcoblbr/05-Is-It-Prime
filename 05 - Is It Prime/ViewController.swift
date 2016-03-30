//
//  ViewController.swift
//  05 - Is It Prime
//
//  Created by Marco Linhares on 6/6/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textUserNumber: UITextField!
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var labelListFactors: UILabel!
    
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    @IBAction func buttonCalculatePrime(sender: AnyObject) {
//        
//        dispatch_async(dispatch_get_main_queue()) {
//            
//        }
    
//        self.loading.startAnimating()
        
        let number = textUserNumber.text.toInt()
        
        if number == nil {
            labelResult.text = "Please type a valid number"
        } else  {
            let (result, list) = isPrime (number!)
            
            if result == true {
                labelResult.text = "\(number!) is prime"
            } else {
                labelResult.text = "\(number!) is NOT prime"
            }
            
            labelListFactors.text = "\(list)"
        }
        
//        self.loading.stopAnimating()

    }

    func isPrime (x : Int) -> (Bool, [Int]) {
        var listPrimes = [Int] ()
        
        if x > 0 {
            var divisors = 0
            
            for i in 1...x {
                
                if x % i == 0 {
                    divisors++
                    
                    listPrimes.append (i)
                }
            }
            
            if divisors == 2 {
                return (true, listPrimes)
            }
        }
        
        return (false, listPrimes)
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

