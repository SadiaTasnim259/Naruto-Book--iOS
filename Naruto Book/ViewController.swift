//
//  ViewController.swift
//  Simpson Book
//
//  Created by Sadia on 1/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    var narutoClass: NarutoClass?

    @IBOutlet weak var tableView: UITableView!
    
    var characterArray = [NarutoClass]()
    var chosenCharacter: NarutoClass?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       
        characterArray.append(Naruto)
        characterArray.append(Hinata)
        characterArray.append(Jiraiya)
        characterArray.append(Kakashi)
        characterArray.append(Itachi)
        characterArray.append(Sasuke)
        characterArray.append(Gaara)
        characterArray.append(Sikamaru)
        characterArray.append(Neji)
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = characterArray[indexPath.row].name
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = characterArray[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true) // Row select effect
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.narutoClass = chosenCharacter
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

