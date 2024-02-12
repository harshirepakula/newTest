//
//  ViewController.swift
//  deliveroo
//
//  Created by Kartheek Repakula on 25/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let foodCategories = [
        "starters": [
          "peanuts", "bread", "salad", "dumplings"
        ],
        "mains": [
          "steak", "bento", "chicken", "pizza", "sandwich", "wrap", "sushi",
          "burger", "hotdog", "pasta", "burrito", "taco", "rice"
        ],
        "desserts": [
          "apples", "strawberries", "cheese", "icecream", "pie", "cake"
        ]
    ]

    let chefDishes = [
      "strawberries", "dumplings", "pasta", "rice", "apples", "salad", "peanuts",
      "cheese", "bento", "sushi"
    ]
    
    var starters = [String]()
    
    var mains = [String]()
    
    var desserts = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let starters1 = chefDishes.filter { foodCategories["starters"]!.contains($0)}
            
            print(starters1)
            
        let starters2 = foodCategories["starters"]!.filter { chefDishes.contains($0)}
                print(starters2)
        
        for (key,value) in foodCategories
        {
            
            if key == "starters"
            {
                starters = value.filter(chefDishes.contains)
            }
            else if key == "mains"
            {
                mains = value.filter(chefDishes.contains)
            }
            else
            {
                desserts = value.filter(chefDishes.contains)
            }
        
        }
        
        print("starters\n\(starters.sorted(by: <))\nmains\n\(mains.sorted(by:<))\ndesserts\n\(desserts.sorted(by:<))")
       
       
        
        
        
        // Do any additional setup after loading the view.
    }


}

