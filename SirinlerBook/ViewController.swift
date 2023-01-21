//
//  ViewController.swift
//  SirinlerBook
//
//  Created by Nazlı on 18.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var mySirin = [sirin]()
    var chosenSirin : sirin?

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let sirinBaba = sirin(name: "Şirin Baba", job: "test", image: UIImage(named: "baba")!)
        let sirine = sirin(name: "Şirine", job: "test", image: UIImage(named: "sirine")!)
        let gargamel = sirin(name: "Gargamel", job: "test", image: UIImage(named: "gargamel")!)
        let gozluklu = sirin(name: "Gözlüklü Şirin", job: "test", image: UIImage(named: "gozluklu")!)
        let bebek = sirin(name: "Bebek Şirin", job: "test", image: UIImage(named: "bebek")!)
        
        // let sirinArray = [sirinBaba, sirine, gargamel, gozluklu, bebek] bunun yerine yukardaki var mySirin şeklinde oluşturmak daha mantıklı
        
        mySirin.append(sirinBaba)
        mySirin.append(sirine)
        mySirin.append(gargamel)
        mySirin.append(gozluklu)
        mySirin.append(bebek)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySirin.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySirin[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSirin = mySirin[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    //segue ye hazırlan
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSirin = chosenSirin
        }
    }

}

