//
//  ViewController.swift
//  Dicee
//
//  Created by Jodi Smit on 4/9/19.
//  Copyright © 2019 Spicy Purrito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	private var randomDiceIndex1 = 0
	private var randomDiceIndex2 = 0
	
	private let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

	@IBOutlet weak var firstDiceImage: UIImageView!
	@IBOutlet weak var secondDiceImage: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		updateDiceImages()
	}

	@IBAction func rollButtonTapped(_ sender: Any) {
		updateDiceImages()
	}
	
	override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
		updateDiceImages()
	}
	private func updateDiceImages() {
		
		randomDiceIndex1 = Int.random(in: 0...5)
		randomDiceIndex2 = Int.random(in: 0...5)
		
		firstDiceImage.image = UIImage(named: diceArray[randomDiceIndex1])
		secondDiceImage.image = UIImage(named: diceArray[randomDiceIndex2])
	}
	
}

