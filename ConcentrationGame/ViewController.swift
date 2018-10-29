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
	
	@IBOutlet var cardButtons: [UIButton]!
	
	/* 	crea un array di carte
		quando premi una carta controlla nell'array
		per sapere se girarla
		check in un altro array di emoji
	*/
	@IBAction func touchCard(_ sender: UIButton)
	{
		//flipCard(withEmoji: "👻", on: sender)
		if let cardNumber = cardButtons.index(of: sender)
		{
			print("cardNumber: \(cardNumber)")
		}
		else
		{
			print("Chosen card is not in the array")
		}
		
		
		
		
		FlipCount+=1
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

