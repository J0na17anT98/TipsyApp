//
//  TipCalc.swift
//  TipsyApp
//
//  Created by Jonathan Tsistinas on 9/19/16.
//  Copyright © 2016 Jonathan Tsistinas. All rights reserved.
//

import Foundation

class TipCalc {
    
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    private var _splitAmount = 0.0
    private var _totalSplitAmountPerPerson = 0.0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get{
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    var splitAmount: Double {
        get{
            return _splitAmount
        } set {
            _splitAmount = newValue
        }
    }
    
    var totalSplitPerPerson: Double {
        get{
            return _totalSplitAmountPerPerson
        } set {
            _totalSplitAmountPerPerson = newValue
        }
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
    
    func calculateSplit() {
        splitAmount = totalAmount - 9
    }
    

    
    
    
}
