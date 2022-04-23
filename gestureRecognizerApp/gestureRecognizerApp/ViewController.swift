//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by İrem Akgoz on 23.04.2022.
//  Copyright © 2022 Irem Akgoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isAta1 = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic(){
        
        
        if isAta1 == true {
            
            imageView.image = UIImage(named: "ata3")
            myLabel.text = "ATATÜRK"
            isAta1 = false
            
        }else{
            
            imageView.image = UIImage(named: "ata1")
            myLabel.text = "MUSTAFA KEMAL"
            isAta1 = true
        }
        
        
        
    }


}

