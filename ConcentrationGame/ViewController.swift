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
	var FlipCount = 0
	{
		didSet
		{
			FlipCountLabel.text = "Flips count: \(FlipCount)"
		}
	}
	
	@IBOutlet weak var FlipCountLabel: UILabel!
	
	@IBOutlet var cardButtons: [UIButton]! 			// cards array
	var emojiChoices = ["🎃", "👻", "🎃", "👻"] 	//emojis array
	

	@IBAction func touchCard(_ sender: UIButton)
	{
		FlipCount+=1
		
		// check if chosen card is in cards array
		if let cardNumber = cardButtons.index(of: sender)
		{
			// assign it an emoji based on its index
			flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
		}
		else
		{
			print("Chosen card is not in the array")
		}
	}
	


	func flipCard(withEmoji emoji: String, on button: UIButton)
	{
		print("withEmoji \(emoji)")
		if button.currentTitle == emoji
		{
			button.setTitle("", for: UIControl.State.normal)
			button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
		}
		else
		{
			button.setTitle(emoji, for: UIControl.State.normal)
			button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		}
	}
}

