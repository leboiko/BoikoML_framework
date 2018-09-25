//
//  LinearRegression.swift
//  BoikoML
//
//  Created by Luis Eduardo Boiko Ferreira on 24/09/2018.
//  Copyright © 2018 Luis Eduardo Boiko Ferreira. All rights reserved.
//

import Foundation

public class LinearRegression : AbstractLearner {
    
    private var x_train : DataFrame<Any>?
    private var y_train : DataFrame<Any>?
    private var normalize : Bool
    
    public init(normalize : Bool?) {
        self.normalize = normalize ?? false
    }
    
    
    public func fit(x_train: DataFrame<Any>, y_train: DataFrame<Any>) {
        self.x_train = x_train
        self.y_train = y_train
        
        if self.normalize {
            for i in 0..<x_train.shape()[0] {
                
            }
        }
    }
    
    
    public func predict(x_test: DataFrame<Any>, y_test: DataFrame<Any>) -> [Any] {
        return []
    }
    
    
}
