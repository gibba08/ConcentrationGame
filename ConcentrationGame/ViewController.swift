//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Gilberto Lo Re on 23/10/2018.
//  Copyright © 2018 Gilberto Lo Re. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
	
	// classes get a free initializer as long as all its var are initialized
	lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1 ) / 2)
	
	var FlipCount = 0 { didSet {FlipCountLabel.text = "Flips count: \(FlipCount)"}}

	@IBOutlet weak var FlipCountLabel: UILabel!
	@IBOutlet var cardButtons: [UIButton]! 			// cards array


	@IBAction func touchCard(_ sender: UIButton)
	{
		FlipCount+=1
		
		// check if chosen card is in cards array
		if let cardNumber = cardButtons.index(of: sender)
		{
			game.chooseCard(at: cardNumber)
			updateViewFromModel()
		}
		else
		{
			print("Chosen card is not in the array")
		}
	}
	
	func updateViewFromModel()
	{
		for index in cardButtons.indices
		{
			print("index \(index)")
			let button 	= cardButtons[index]
			let card 	= game.cards[index]

			if card.isFaceUp
			{
				button.setTitle(emoji(for: card), for: UIControl.State.normal)
				button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
			}
			else
			{
				button.setTitle("", for: UIControl.State.normal)
				button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
			}
		}
	}
	
	var emogiChoices = ["🦇" , "😱", "🙀", "😈", "🎃" , "👻", "🍭" , "🍬", "🍎" ]
	
	func emoji(for card: Card)-> String
	{
		return "?"
	}


}

