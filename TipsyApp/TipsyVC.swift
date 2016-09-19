//
//  ViewController.swift
//  TipsyApp
//
//  Created by Jonathan Tsistinas on 9/18/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import UIKit

class TipsyVC: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var tipCalculatorTitleView: UIView!
    @IBOutlet weak var tipCalculatorLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var totalSplitPerPerson: UILabel!
    
    
    
    // MARK: - @properties
    
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    var splitCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    
    
    
    // MARK: - Initalize Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipPercentValue()
    }


    // MARK: - @IBActions
    
    @IBAction func billAmountChanges(_ sender: AnyObject) {
        calcTip()
    }
    
    @IBAction func tipPercentChanges(_ sender: AnyObject) {
        tipPercentValue()
        calcTip()
        
    }
    @IBAction func splitAmountperPersonChanged(_ sender: AnyObject) {
        splitValue()
        updateSplit()
    }
    
    // MARK: - Functions
    
    func calcTip() {
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = ((billAmountTextField.text)! as NSString).doubleValue
        tipCalc.calculateTip()
        updateUI()

    }
    
    func calcSplit() {
        tipCalc.splitAmount = Double(splitSlider.value)
        tipCalc.calculateSplit()
        updateSplit()
        
    }
    
    func updateUI() {
        tipAmountLabel.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLabel.text = String(format: "$%0.2f", tipCalc.totalAmount)
        updateSplit()
    }
    
    func updateSplit() {
        totalSplitPerPerson.text = totalAmountLabel.text
    }
    
    func tipPercentValue() {
        tipPercentLabel.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }
    
    func splitValue() {
        splitLabel.text = "Split \(Int(splitSlider.value + 1))"
    }
    

}

