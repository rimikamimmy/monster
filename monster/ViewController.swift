//
//  ViewController.swift
//  monster
//
//  Created by Rimika Inoguchi on 2018/06/05.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var imagenumber = 0
    var namenumber = 0
    
    
    let mosterArray = [UIImage(named:"monster1.png")!,
                       UIImage(named:"monster2.png")!,
                       UIImage(named:"monster3.png")!,
                       ]
    
    
    //素材を入れていない場合はUIImageとかnamedは入らない
    let wordArray = ["モンスター１", "モンスター２","モンスター３"]
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func back(_ sender: Any) {
        
        imagenumber -= 1
        
        displayimage()
        
        namenumber -= 1
        
        displayname()
    }
    
    
    @IBAction func next(_ sender: Any) {
        
        imagenumber += 1
        
        displayimage()
        
        namenumber += 1
        
        displayname()
    }
    
    
    //番号から画像を呼び出す
    func displayimage(){
        
        if imagenumber < 0 {
            
            imagenumber = 2
            
            
        }
        
        if imagenumber > 2 {
            
            imagenumber = 0
            
        }
        
        image.image = mosterArray[imagenumber]
        
    }
    
    func displayname(){
        
        if namenumber < 0 {
            
            namenumber = 2
            
            
        }
        
        if namenumber > 2 {
            
            namenumber = 0
            
        }
        
        label.text = wordArray[namenumber]
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
       //一番最初nに表示させたい画像とラベルをかく
        //表示させるときはletなんとかってかく
        let mon = UIImage(named:"monster1.png")
        
        image.image = mon
        
        let name = "モンスター１"
        
        label.text = name
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

