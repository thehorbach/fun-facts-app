//
//  ViewController.swift
//  FunFacts
//
//  Created by Vyacheslav Horbach on 23/08/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showAntoherFactButton: UIButton!
    
    let factModel = FactModel()
    let colorModel = ColorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomFactOnLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnotherFactButtonPressed (sender: UIButton) {
        randomFactOnLabel()
        randomBackgroundColorAndButton()
    }

}

extension ViewController {
    func randomFactOnLabel() {
        funFactLabel.text = factModel.getRandomFact()
    }
    
    func randomBackgroundColorAndButton() {
        
        let color = colorModel.getRandomColor()
        self.view.backgroundColor = color
        self.showAntoherFactButton.tintColor = color
        
    }
}

