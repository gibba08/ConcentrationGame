 //
//  Concentration.swift
//  ConcentrationGame
//
//  Created by Gilberto Lo Re on 29/10/2018.
//  Copyright © 2018 Gilberto Lo Re. All rights reserved.
//

import Foundation

class Concentration
{
	var cards = [Card]() //init empty array
	
	func chooseCard(at index: Int)
	{
		if cards[index].isFaceUp
		{
			cards[index].isFaceUp = false;
		}
		else
		{
			cards[index].isFaceUp = true;
		}
	}
	
	init(numberOfPairsOfCards :Int)
	{
		for _ in 1...numberOfPairsOfCards
		{
			let card = Card()
			cards += [card, card]
		}
		
		// TODO: Shiffle the cards
	}
}
