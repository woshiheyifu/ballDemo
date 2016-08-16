//
//  AuxiliaryModels.swift
//  ball
//
//  Created by 中盛恒通 on 16/8/15.
//  Copyright © 2016年 中盛恒通. All rights reserved.
//

import Foundation

struct ClickLocation {
    let x:Int
    let y:Int
}
struct ClickCommand {
    let location : ClickLocation
    let completion : (Bool) -> ()
}
struct SquareGameboard<T> {
    let dimention : Int
    var boardArray : [T]
    
    init(dimention d : Int, initialValue : T){
        dimention = d
        boardArray = [T](count : d*d, repeatedValue : initialValue)
    }
    
    subscript(row : Int, col : Int) -> T{
        get {
            assert(row >= 0 && row < dimention)
            assert(col >= 0 && col < dimention)
            return boardArray[row*dimention + col]
        }
        set {
            assert(row >= 0 && row < dimention)
            assert(col >= 0 && col < dimention)
            boardArray[row*dimention + col] = newValue
        }
    }
}