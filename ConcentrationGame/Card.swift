//
//  Card.swift
//  ConcentrationGame
//
//  Created by Gilberto Lo Re on 29/10/2018.
//  Copyright © 2018 Gilberto Lo Re. All rights reserved.
//

import Foundation
/*

struct: no inheritance
struct : value types vs classes ( reference types)

when you pass a struct.. you copy the struct! that may seem inefficient but swift knows how to copy it, basically it copies it when modified.

*/
struct Card
{
	var isFaceUp 	= false
	var isMatched 	= false
	var identifier: Int
	
	static var identifierFactory = 0
	
	static func getUniqueIdentifier() -> Int
	{
		identifierFactory+=1
		return identifierFactory
	}
	
	init()
	{
		self.identifier = Card.getUniqueIdentifier()
	}
}

