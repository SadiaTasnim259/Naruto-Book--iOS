//
//  ModelClass.swift
//  Naruto Book
//
//  Created by Sadia on 2/4/23.
//

import Foundation
import UIKit

class NarutoClass{
    var name: String
    var job: String
    var image: UIImage?
    
    init(name: String, job: String, image: UIImage?) {
        self.name = name
        self.job = job
        self.image = image
    }
}

let Naruto = NarutoClass(name: "Naruto Uzumaki", job: "7Th Hokage", image: UIImage(named: "Naruto"))
let Hinata = NarutoClass(name: "Hinata Hyuga", job: "Sinobi", image: UIImage(named: "Hinata"))
let Jiraiya = NarutoClass(name: "Jiraiya", job: "Legendary Sanin", image: UIImage(named: "Jiraiya"))
let Gaara = NarutoClass(name: "Gaara", job: "Kazekage", image: UIImage(named: "Gara"))
let Itachi = NarutoClass(name: "Itachi Uchiha", job: "Anbu Black Chife", image: UIImage(named: "Itachi"))
let Sasuke = NarutoClass(name: "Sasuke Uchiha", job: "Criminal", image: UIImage(named: "Sasuke"))
let Sikamaru = NarutoClass(name: "Sikamaru Nara", job: "Right Hand Man of the Hokage", image: UIImage(named: "Sikamaru"))
let Neji = NarutoClass(name: "Neji Hyuga", job: "Sinobi", image: UIImage(named: "Neji"))
let Kakashi = NarutoClass(name: "Kakashi Hatake", job: "6th Hokage", image: UIImage(named: "Kakashi"))


