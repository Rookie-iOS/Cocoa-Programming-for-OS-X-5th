//
//  PassWdModel.swift
//  RamdomPassWD
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)

func generateCharactersRandom() ->Character {

    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let ch = characters[index]
    return ch
}

func generateStringRondom(length: Int) ->String {

    var string = ""
    for _ in 0..<length {
        string.append(generateCharactersRandom())
    }
    return string
}
