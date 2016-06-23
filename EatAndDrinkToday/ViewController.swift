//
//  ViewController.swift
//  EatAndDrinkToday
//
//  Created by Pawel on 18.06.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var drinkImageView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    @IBOutlet weak var shuffleButton: UIButton!
    
    var foodArray : [Food] = [Food(name: "Burritto", image: "burritos"),
                         Food(name: "Fish", image: "fish"),
                         Food(name: "Hamburger", image: "habuger"),
                         Food(name: "Hot-Dog", image: "hot-dog"),
                         Food(name: "Pasta", image: "pasta"),
                         Food(name: "Seefood", image: "seefood")]
    
    var drinkArray: [Drink] = [Drink(name: "Beer", image: "BEER"),
                               Drink(name: "Coffee", image: "Coffee"),
                               Drink(name: "Cola, Fanta or Sprite", image: "cola fanta sprite"),
                               Drink(name: "Tee", image: "Tee"),
                               Drink(name: "Water", image: "water")]
    
    var backgroundArray: [String] = ["background1", "background2", "background3", "background4", "background5", "background6"]
    
    
    @IBAction func eatAndDrinkButton(sender: UIButton) {
        self.randomizeEverything()
    }
    
    // zmiana koloru labels i button
    
    func colorChange() -> UIColor
    {
        let colorLabelChange = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 0.9)
        return colorLabelChange
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodLabel.layer.masksToBounds = true
        self.foodLabel.layer.cornerRadius = 5
        self.foodLabel.layer.borderWidth = 2
        self.foodLabel.adjustsFontSizeToFitWidth = true
        
        self.drinkLabel.layer.masksToBounds = true
        self.drinkLabel.layer.cornerRadius = 5
        self.drinkLabel.layer.borderWidth = 2
        drinkLabel.adjustsFontSizeToFitWidth = true
        
        self.shuffleButton.layer.masksToBounds = true
        self.shuffleButton.layer.cornerRadius = 5
        self.shuffleButton.layer.borderWidth = 2
        
        self.randomizeEverything()
    }
    
    func randomizeEverything() {
        
        let color = self.colorChange()
        self.foodLabel.backgroundColor = color
        self.drinkLabel.backgroundColor = color
        self.shuffleButton.backgroundColor = color
        
        self.shuffleButton.layer.borderColor = self.colorChange().CGColor
        self.foodLabel.layer.borderColor = self.colorChange().CGColor
        self.drinkLabel.layer.borderColor = self.colorChange().CGColor
        
        // FOOD
        let foodNumber = Int(arc4random() % uint(self.foodArray.count))
        let food = self.foodArray[foodNumber]
        
        self.foodImageView.image = UIImage (named: food.image)
        self.foodLabel.text = food.name
        
        // DRINK
        
        let drinkNumber = Int(arc4random() % uint(self.drinkArray.count))
        let drink = self.drinkArray[drinkNumber]
        
        self.drinkImageView.image = UIImage(named: drink.image)
        self.drinkLabel.text = drink.name
        
        //BACKGROUND
        
        let backgroundNumber = Int(arc4random() % uint(backgroundArray.count))
        let background = self.backgroundArray[backgroundNumber]
        
        self.backgroundImageView.image = UIImage(named: background)
        
    }
}

