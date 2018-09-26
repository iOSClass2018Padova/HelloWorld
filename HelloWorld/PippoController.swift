//
//  PippoController.swift
//  HelloWorld
//
//  Created by stefano vecchiati on 18/09/2018.
//  Copyright © 2018 co.eggon. All rights reserved.
//

import UIKit

class PippoController: UIViewController {
    
    @IBOutlet weak var insertButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstLabel.text = "Ciao"
        self.title = "First"

    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        firstLabel.text = "ciao a tutti111"
    }


}
