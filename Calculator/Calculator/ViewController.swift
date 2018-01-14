//
//  ViewController.swift
//  Calculator
//
//  Created by Niharika Srivastav on 6/16/16.
//

import UIKit

var i = ""
var previousValue = 0.0
var currentValue = 0.0
class ViewController: UIViewController {
    @IBOutlet weak var text1: UITextField!

    @IBAction func b1(sender: AnyObject) {
        currentValue = currentValue * 10 + 1
        text1.text = String(currentValue)
    }
    @IBAction func b2(sender: AnyObject) {
        currentValue = currentValue * 10 + 2
        text1.text = String(currentValue)
    }
    @IBAction func b3(sender: AnyObject) {
        currentValue = currentValue * 10 + 3
        text1.text = String(currentValue)
    }
    @IBAction func b4(sender: AnyObject) {
        currentValue = currentValue * 10 + 4
        text1.text = String(currentValue)
    }
    @IBAction func b10(sender: AnyObject) {
        currentValue = currentValue * 10 + 5
        text1.text = String(currentValue)
    }
    @IBAction func b6(sender: AnyObject) {
        currentValue = currentValue * 10 + 6
        text1.text = String(currentValue)
    }
    @IBAction func b7(sender: AnyObject) {
        currentValue = currentValue * 10 + 7
        text1.text = String(currentValue)
    }
    @IBAction func b8(sender: AnyObject) {
        currentValue = currentValue * 10 + 8
        text1.text = String(currentValue)
    }
    @IBAction func b9(sender: AnyObject) {
        currentValue = currentValue * 10 + 9
        text1.text = String(currentValue)
    }
    @IBAction func b0(sender: AnyObject) {
        currentValue = currentValue * 10 + 0
        text1.text = String(currentValue)
    }
    @IBAction func b(sender: AnyObject) {
        if previousValue == 0 {
            previousValue = currentValue
            text1.text = String(previousValue)
            currentValue = 0
            i = "+"
        } else {
            switch i {
                case "+":
                previousValue += currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "+"
            case "-":
                previousValue -= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "+"
            case "*":
                previousValue *= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "+"
            case "/":
                previousValue /= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "+"
            default:
                print ("Die")
                
            }
        }
    }
    @IBAction func bminus(sender: AnyObject) {
        if previousValue == 0 {
            previousValue = currentValue
            text1.text = String(previousValue)
            currentValue = 0
            i = "-"
        } else {
            switch i {
            case "+":
                previousValue += currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "-"
            case "-":
                previousValue -= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "-"
            case "*":
                previousValue *= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "-"
            case "/":
                previousValue /= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "-"
            default:
                print ("Die")
                
            }
        }
    }
    @IBAction func bproduct(sender: AnyObject) {
        if previousValue == 0 {
            previousValue = currentValue
            text1.text = String(previousValue)
            currentValue = 0
            i = "*"
        } else {
            switch i {
            case "+":
                previousValue += currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "*"
            case "-":
                previousValue -= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "*"
            case "*":
                previousValue *= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "*"
            case "/":
                previousValue /= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "*"
            default:
                print ("Die")
                
            }
        }
    }
    @IBAction func bdivision(sender: AnyObject) {
        if previousValue == 0 {
            previousValue = currentValue
            text1.text = String(previousValue)
            currentValue = 0
            i = "/"
        } else {
            switch i {
            case "+":
                previousValue += currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "/"
            case "-":
                previousValue -= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "/"
            case "*":
                previousValue *= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "/"
            case "/":
                previousValue /= currentValue
                text1.text = String(previousValue)
                currentValue = 0
                i = "/"
            default:
                print ("Die")
                
            }
        }
    }
    @IBAction func bequal(sender: AnyObject) {
        switch i {
        case "+":
            previousValue += currentValue
            text1.text = String(previousValue)
            previousValue = 0
            currentValue = 0
        case "-":
            previousValue -= currentValue
            text1.text = String(previousValue)
            previousValue = 0
            currentValue = 0
        case "*":
            previousValue *= currentValue
            text1.text = String(previousValue)
            previousValue = 0
            currentValue = 0
        case "/":
            previousValue /= currentValue
            text1.text = String(previousValue)
            previousValue = 0
            currentValue = 0
        default:
            print ("Die")
            
        }
        i = ""
    }
    @IBAction func bclear(sender: AnyObject) {
        text1.text = ""
        currentValue = 0
        previousValue = 0
        i = ""
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

